/*
 * $Id: FileUploadAction.java,v 1.14 2015/06/24 05:43:14 Narendra Exp $
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package in.igsa.upload;

import in.igsa.manage.MasterService;
import in.igsa.manage.MasterServiceImpl;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import utils.DateTime;
import utils.SendEmail;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



/**
 * Show case File Upload example's action. <code>FileUploadAction</code>
 */
public class FileUploadAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 5156288255337069381L;

	private String contentType;
	private File upload;
	private String fileName;
	private HttpServletRequest servletRequest;  
	private List<FileUploadVo> parent;
	private FileUploadVo child,rowHeader;
	private Map<String, String> mapHeader = new HashMap<String, String>();
	private List<String> yearVal,year;
	private List<FileUploadVo> uploadError = new ArrayList<FileUploadVo>();
	private MasterService service = new MasterServiceImpl();
	private List<FileUploadVo> scenarioReport =  new ArrayList<FileUploadVo>();
	private String link;
	private String fileNameForUpload;
	 
	
	@Override
	public String execute() throws Exception {
		
		
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = ActionContext.getContext().getSession();
		List<FileUploadVo> scenarioDataValue = new ArrayList<FileUploadVo>();
		String model = (String) request.getParameter("model");
		String scenario = (String) request.getParameter("scenario");
		FileUploadVo vo = new FileUploadVo();
		
		System.out.println("    Model   : "+model+"     sscsfd       :    "+scenario+"     user_id    "+session.get("user_id").toString());
		
		
		vo.setModel(model);
		vo.setScenario(scenario);
		vo.setUploadedBy((String)session.get("user_id"));
		
		scenarioReport = service.getScenarionData(vo);
		
		
		for (FileUploadVo vo1 : scenarioReport) {
			
			scenarioDataValue = service.getScenarionDataValue(vo1);
			List<String> yy = new ArrayList<String>();
			List<String> yyval = new ArrayList<String>();
			
			for(FileUploadVo vo2 : scenarioDataValue){
				yy.add(vo2.getYy());
				yyval.add(vo2.getYyVal());
				System.out.println("   yy    : "+yy+"    yyval    :    "+yyval);
			}
			vo1.setYear(yy);
			vo1.setVal(yyval);
		}
		return "success";
	}
	public String input() throws Exception {
		scenarioReport = service.getScenarioReport();
		linkAction(scenarioReport);
		System.out.println(" Ttoal Size :  "+scenarioReport.size());
		return SUCCESS;
	}

	public String upload() throws Exception {
		try {
			Map<String, Object> session = ActionContext.getContext().getSession();
			List<String> regionNames = new ArrayList<String>();
			List<String> modelNames = new ArrayList<String>();
			List<String> unitNames = new ArrayList<String>();
			List<String> variableNames = new ArrayList<String>();
			String emailError = "";
			regionNames = service.getRegionNames();
			modelNames = service.getModelNames();
			unitNames = service.getUnitNames();
			variableNames = service.getVariableNames();
			String dateTime;
			Date date = new Date();
				dateTime = DateTime.getDateTime1(date);
				String filePath = servletRequest.getSession().getServletContext().getRealPath("/")+"/files/";  
				File theFile;
	
				parent = new ArrayList<FileUploadVo>();
				rowHeader = new FileUploadVo();
				System.out.println(" contentType : "+contentType);
				boolean row_header = true;
				if("application/vnd.ms-excel".equalsIgnoreCase(contentType)){
					try
					{
						theFile = new File(filePath, DateTime.getFileForUpload(date)+".xls");
						if(theFile.exists() ){
						System.out.println(" file esist ");
						}
						else{
							System.out.println(" null file");
						}
						fileNameForUpload = DateTime.getFileForUpload(date)+".xls";
						FileUtils.copyFile(upload, theFile);
						FileInputStream file = new FileInputStream(theFile); //new File("\\files\\howtodoinjava_demo.xls"));
						//Create Workbook instance holding reference to .xls file
						HSSFWorkbook workbook = new HSSFWorkbook(file);
						//Get first/desired sheet from the workbook (.xls)
						HSSFSheet sheet = workbook.getSheetAt(0);
						//Iterate through each rows one by one
						Iterator<Row> rowIterator = sheet.iterator();
						while (rowIterator.hasNext()) 
						{
							HSSFRow row = (HSSFRow) rowIterator.next();
							//For each row, iterate through all the columns
							Iterator<Cell> cellIterator = row.cellIterator();
							child = new FileUploadVo();
							yearVal = new ArrayList<String>();
							year = new ArrayList<String>();							
							int i=1;
							if(row_header){
								while (cellIterator.hasNext()) 
								{
									HSSFCell cell = (HSSFCell) cellIterator.next();
									//Check the cell type and format accordingly
									if( i > 5){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												mapHeader.put(i+"", cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												mapHeader.put(i+"", cell.getStringCellValue());
												break;
										}
									}
									i++;
								}
								row_header = false;
							}else{
								while (cellIterator.hasNext()) 
								{
									HSSFCell cell = (HSSFCell) cellIterator.next();
									//Check the cell type and format accordingly
									if(i==1){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setModel(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setModel(cell.getStringCellValue());
												break;
										}
									}else if (i ==2){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setScenario(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setScenario(cell.getStringCellValue());
												break;
										}
									}else if(i ==3){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setRegion(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setRegion(cell.getStringCellValue());
												break;
										}
										
									}else if( i == 4){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setVariable(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setVariable(cell.getStringCellValue());
												break;
										}
										
									}else if( i == 5){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setUnit(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setUnit(cell.getStringCellValue());
												break;
										}
										
									}else{
										
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												yearVal.add(cell.getNumericCellValue()+"");
												year.add(mapHeader.get(i+"").toString());
												break;
											case Cell.CELL_TYPE_STRING:
												yearVal.add(cell.getStringCellValue()+"");
												year.add(mapHeader.get(i+"").toString());
												break;
										}
									}
									//parent.add(child);
									//child.setValue(value);
									i++;
								}
								child.setVal(yearVal);
								child.setYear(year);
								child.setDateTime(dateTime);
								child.setUploadedBy(session.get("user_id").toString());
								child.setFilePath("files/"+fileNameForUpload);
								parent.add(child);
							}
						}
						file.close();
					} 
					catch (Exception e) 
					{
						e.printStackTrace();
					}
					
					service.deleteModelSceRegion(child);
					
					for (FileUploadVo aa : parent) {
						boolean flag = true;
						if(!modelNames.contains(aa.getModel())){
							emailError = emailError + "ERROR : Model name <i>"+aa.getModel()+"</i> not in list of valid Model name. <br>";
							flag = false;
						}

						if(!regionNames.contains(aa.getRegion())){
							emailError = emailError + "ERROR : Region name <i>"+aa.getRegion()+"</i> not in list of valid Region name. <br>";
							flag = false;
						}
						
						if(!variableNames.contains(aa.getVariable())){
							emailError = emailError + "ERROR : Variable name <i>"+aa.getVariable()+"</i> not in list of valid Variable name. <br>";
							flag = false;
						}
						
						if(!unitNames.contains(aa.getUnit())){
							emailError = emailError + "ERROR : Unit name <i>"+aa.getUnit()+"</i> not in list of valid Unit name. <br>";
							flag = false;
						}
						
						
						if(flag)
							service.insertFileUpload(aa);
						else
							emailError = emailError + "********************************************<br>";
						
					}
					
					
				}else if("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet".equals(contentType)){
					try
					{
						theFile = new File(filePath, DateTime.getFileForUpload(date)+".xlsx");
						fileNameForUpload = DateTime.getFileForUpload(date)+".xlsx";
						FileUtils.copyFile(upload, theFile);
						FileInputStream file = new FileInputStream(theFile); //new File("\\files\\howtodoinjava_demo.xls"));

						//Create Workbook instance holding reference to .xlsx file
						XSSFWorkbook workbook = new XSSFWorkbook(file);

						//Get first/desired sheet from the workbook
						XSSFSheet sheet = workbook.getSheetAt(0);
						//Iterate through each rows one by one
						Iterator<Row> rowIterator = sheet.iterator();
						
						while (rowIterator.hasNext()) 
						{
							XSSFRow row = (XSSFRow) rowIterator.next();
							//For each row, iterate through all the columns
							Iterator<Cell> cellIterator = row.cellIterator();
							child = new FileUploadVo();
							yearVal = new ArrayList<String>();
							year = new ArrayList<String>();							
							int i=1;
							
							if(row_header){
								while (cellIterator.hasNext()) 
								{
									XSSFCell cell = (XSSFCell) cellIterator.next();
									//Check the cell type and format accordingly
									if( i > 5){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												mapHeader.put(i+"", cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												mapHeader.put(i+"", cell.getStringCellValue());
												break;
										}
									}
									i++;
								}
								row_header = false;
							}else{
								while (cellIterator.hasNext()) 
								{
									XSSFCell cell = (XSSFCell) cellIterator.next();
									//Check the cell type and format accordingly
									if(i==1){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setModel(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setModel(cell.getStringCellValue());
												break;
										}
									}else if (i ==2){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setScenario(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setScenario(cell.getStringCellValue());
												break;
										}
									}else if(i ==3){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setRegion(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setRegion(cell.getStringCellValue());
												break;
										}
										
									}else if( i == 4){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setVariable(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setVariable(cell.getStringCellValue());
												break;
										}
										
									}else if( i == 5){
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												child.setUnit(cell.getNumericCellValue()+"");
												break;
											case Cell.CELL_TYPE_STRING:
												child.setUnit(cell.getStringCellValue());
												break;
										}
										
									}else{
										
										switch (cell.getCellType()) 
										{
											case Cell.CELL_TYPE_NUMERIC:
												yearVal.add(cell.getNumericCellValue()+"");
												year.add(mapHeader.get(i+"").toString());
												break;
											case Cell.CELL_TYPE_STRING:
												yearVal.add(cell.getStringCellValue()+"");
												year.add(mapHeader.get(i+"").toString());
												break;
										}
									}
									//parent.add(child);
									//child.setValue(value);
									i++;
								}
								child.setVal(yearVal);
								child.setYear(year);
								child.setDateTime(dateTime);
								child.setUploadedBy(session.get("user_id").toString());
								child.setFilePath("files/"+fileNameForUpload);
								parent.add(child);
								System.out.println("\n");
							}
						}
						
						file.close();
					} 
					catch (Exception e) 
					{
						e.printStackTrace();
					}
					
					service.deleteModelSceRegion(child);
					
					for (FileUploadVo aa : parent) {
						boolean flag = true;
						if(!modelNames.contains(aa.getModel())){
							emailError = emailError + "ERROR : Model name "+aa.getModel()+" not in list of valid Model name. <br>";
							flag = false;
						}

						if(!regionNames.contains(aa.getRegion())){
							emailError = emailError + "ERROR : Region name "+aa.getRegion()+" not in list of valid Region name. <br>";
							flag = false;
						}
						
						if(!variableNames.contains(aa.getVariable())){
							emailError = emailError + "ERROR : Variable name "+aa.getVariable()+" not in list of valid Variable name. <br>";
							flag = false;
						}
						
						if(!unitNames.contains(aa.getUnit())){
							emailError = emailError + "ERROR : Unit name "+aa.getUnit()+" not in list of valid Unit name. <br>";
							flag = false;
						}
						
						
						if(flag)
							service.insertFileUpload(aa);
						else
							emailError = emailError + "********************************************<br>";
						
					}
					
					
				}else{
					addActionError(" File Format Should be xls or xlsx ");
					scenarioReport = service.getScenarioReport();
					return INPUT;
				}
				
				String subject = "Error : undefined parameters";
				
				String content = "Dear "+session.get("user_id").toString()+" <br> <br> here's a brief report about your scenarios data upload to the SSP database."
						+ "Please do open and carefully check the attached log file to find out whether the import was successful.<br><br>Regards,<br>SSP database admin Summary <br><br><br>";
				
				if(emailError != "")
					SendEmail.send("4igsalabs@gmail.com", session.get("user_email").toString(), subject, content+emailError);
				
			} catch (Exception e) {

			addActionError(e.getCause().getLocalizedMessage());
			scenarioReport = service.getScenarioReport();
			linkAction(scenarioReport);
			return INPUT;

			}
		
		scenarioReport = service.getScenarioReport();
		linkAction(scenarioReport);
		
		return SUCCESS;
	}

	
	private void linkAction(List<FileUploadVo> list) {
		int i=0;
		String tempLink;
		for (FileUploadVo vo : list) {
			//System.out.println("vo.getCountryId()  vo.getCountryId()  "	+ vo.getCountryId());
			link = "<a href=\"Scenario.html?model="+vo.getModel()+"&scenario="+vo.getScenario()+"\" target=\"_blank\" class=\"btn btn-primary btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\"> View </a>    |    " ;
			link =  link +	"<a href=\"#\">Delete</a>";
			
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
			tempLink = "<a href='"+vo.getFilePath()+"' > "+vo.getFilePath()+"</a>";
			vo.setFilePath(tempLink);
		}
	}
	
	// since we are using <s:file name="upload" .../> the file name will be
	// obtained through getter/setter of <file-tag-name>FileName
	public String getUploadFileName() {
		return fileName;
	}

	public void setUploadFileName(String fileName) {
		this.fileName = fileName;
	}


	// since we are using <s:file name="upload" ... /> the content type will be
	// obtained through getter/setter of <file-tag-name>ContentType
	public String getUploadContentType() {
		return contentType;
	}

	public void setUploadContentType(String contentType) {
		this.contentType = contentType;
	}


	// since we are using <s:file name="upload" ... /> the File itself will be
	// obtained through getter/setter of <file-tag-name>
	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}



	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;  
	}

	public List<FileUploadVo> getParent() {
		return parent;
	}

	public void setParent(List<FileUploadVo> parent) {
		this.parent = parent;
	}

	public FileUploadVo getChild() {
		return child;
	}

	public void setChild(FileUploadVo child) {
		this.child = child;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public FileUploadVo getRowHeader() {
		return rowHeader;
	}

	public void setRowHeader(FileUploadVo rowHeader) {
		this.rowHeader = rowHeader;
	}

	public Map<String, String> getMapHeader() {
		return mapHeader;
	}

	public void setMapHeader(Map<String, String> mapHeader) {
		this.mapHeader = mapHeader;
	}

	public List<String> getYearVal() {
		return yearVal;
	}

	public void setYearVal(List<String> yearVal) {
		this.yearVal = yearVal;
	}

	public List<String> getYear() {
		return year;
	}

	public void setYear(List<String> year) {
		this.year = year;
	}

	public List<FileUploadVo> getUploadError() {
		return uploadError;
	}

	public void setUploadError(List<FileUploadVo> uploadError) {
		this.uploadError = uploadError;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public MasterService getService() {
		return service;
	}

	public void setService(MasterService service) {
		this.service = service;
	}

	public List<FileUploadVo> getScenarioReport() {
		return scenarioReport;
	}

	public void setScenarioReport(List<FileUploadVo> scenarioReport) {
		this.scenarioReport = scenarioReport;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
	
	
}
