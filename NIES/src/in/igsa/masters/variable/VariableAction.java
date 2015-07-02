package in.igsa.masters.variable;

import in.igsa.popup.DropDownServices;
import in.igsa.popup.DropDownServicesImpl;
import in.igsa.popup.DropDownVo;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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

import utils.UtilFunctions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class VariableAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private static VariableService service = new VariableServiceImpl();
	private List<VariableVo> variableList = new ArrayList<VariableVo>();
	private VariableVo variableVo = new VariableVo();
	private DropDownServices dService = new DropDownServicesImpl();
	List<DropDownVo> unitList = new ArrayList<DropDownVo>();
	List<DropDownVo> areaList = new ArrayList<DropDownVo>();
	Map<String, Object> session = ActionContext.getContext().getSession();
	private String errorMsg = "";
	
	public VariableAction() {
		unitList = dService.populateCombo("getAllUnits");
		areaList = dService.populateCombo("getAllAreas");
	}

	public String getVariable() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		variableList = service.getVariableList();
		linkAction(variableList);

		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("Variable ID  " + id);
		if (id != null) {
			variableVo = service.getVariableById(id);
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteVariable() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteVariableById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		String id = (String) session.get("id");

		if (id != null) {
			variableVo.setTblId(id);
			variableVo.setUpdatedBy((String) session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateVariable(variableVo);
		if (!validationSuccessful()) {
			variableList = service.getVariableList();
			linkAction(variableList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			int tblid = UtilFunctions.getMaxTblid("variable_m_details")+1;
			String varId;
			
			if(tblid < 10)
				varId = "VR00"+tblid;
			else if(tblid < 100)
				varId = "VR0"+tblid;
			else
				varId = "VR"+tblid;
			variableVo.setVariableId(varId);
			variableVo.setCreatedBy((String) session.get("user_id"));
			errorMsg = service.insertVariable(variableVo);
			if(errorMsg != "")
				addActionError(errorMsg);
			variableList = service.getVariableList();
			linkAction(variableList);
			
		}
		
		if (this.hasActionErrors()) {
			return INPUT;
		} else {
			return SUCCESS;
		}
		
		
	}

	
	public String uploadVariable()throws Exception{
		
		List<VariableVo> vo = new ArrayList<VariableVo>();
		String emailError = "";
		
		if("application/vnd.ms-excel".equalsIgnoreCase(variableVo.getUploadContentType())){
			FileInputStream file = new FileInputStream(variableVo.getUpload());
			HSSFWorkbook workbook = new HSSFWorkbook(file);
			//Get first/desired sheet from the workbook (.xls)
			HSSFSheet sheet = workbook.getSheetAt(0);
			//Iterate through each rows one by one
			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				VariableVo voTemp = new VariableVo();
				HSSFRow row = (HSSFRow) rowIterator.next();
				//For each row, iterate through all the columns
				Iterator<Cell> cellIterator = row.cellIterator();
				int i=0;
					while (cellIterator.hasNext()) 
					{
						HSSFCell cell = (HSSFCell) cellIterator.next();
						//Check the cell type and format accordingly
							switch (i) 
							{
								case 0:
									voTemp.setVariableName(cell.getStringCellValue());
									break;
								case 1:
									voTemp.setAreaName(cell.getStringCellValue());
										for (DropDownVo dropDownVal : areaList) {
											if(cell.equals(dropDownVal.getLookupName())){
												voTemp.setAreaId(dropDownVal.getLookupId());
												break;
											}
										}
									break;
								case 2:
									voTemp.setUnitName(cell.getStringCellValue());
										for (DropDownVo dropDownVal : unitList) {
											if(cell.equals(dropDownVal.getLookupName())){
												voTemp.setUnitId(dropDownVal.getLookupId());
												break;
											}
										}
									break;
								case 3:
									voTemp.setDefinition(cell.getStringCellValue());
									break;
							}
							i++;
					}
					vo.add(voTemp);
			}
		}else if("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet".equals(variableVo.getUploadContentType())){
			FileInputStream file = new FileInputStream(variableVo.getUpload());
			XSSFWorkbook workbook = new XSSFWorkbook(file);

			//Get first/desired sheet from the workbook
			XSSFSheet sheet = workbook.getSheetAt(0);
			//Iterate through each rows one by one
			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) 
			{
				int i=0;
				VariableVo voTemp = new VariableVo();
				XSSFRow row = (XSSFRow) rowIterator.next();
				//For each row, iterate through all the columns
				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) 
				{
					XSSFCell cell = (XSSFCell) cellIterator.next();
					//Check the cell type and format accordingly
					switch (i) 
					{
						case 0:
							voTemp.setVariableName(cell.getStringCellValue());
							break;
						case 1:
							voTemp.setAreaName(cell.getStringCellValue());
								for (DropDownVo dropDownVal : areaList) {
									
									if(cell.getStringCellValue().equals(dropDownVal.getLookupName())){
										voTemp.setAreaId(dropDownVal.getLookupId());
										break;
									}
								}
							break;
						case 2:
							voTemp.setUnitName(cell.getStringCellValue());
								for (DropDownVo dropDownVal : unitList) {
									if(cell.getStringCellValue().equals(dropDownVal.getLookupName())){
										voTemp.setUnitId(dropDownVal.getLookupId());
										break;
									}
								}
							break;
						case 3:
							voTemp.setDefinition(cell.getStringCellValue());
							break;
					}
					i++;
				}
				vo.add(voTemp);
			}
			
		}else{
			addActionMessage(" File Format Should be xls or xlsx ");
			variableList = service.getVariableList();
			linkAction(variableList);
			return INPUT;
		}
		
		
		for (VariableVo variableVo : vo) {
			int tblid = UtilFunctions.getMaxTblid("variable_m_details")+1;
			boolean flag = true;
			String varId;
			
			if(tblid < 10)
				varId = "VR00"+tblid;
			else if(tblid < 100)
				varId = "VR0"+tblid;
			else
				varId = "VR"+tblid;
			variableVo.setVariableId(varId);
			variableVo.setCreatedBy((String) session.get("user_id"));
			
			if(variableVo.getAreaId() == (null)){
				//System.out.println(variableVo.getAreaId()+"["+variableVo.getAreaName()+"]        |          "+variableVo.getUnitId()+"["+variableVo.getUnitName()+"]          |          "+variableVo.getDefinition());
				emailError = emailError + "ERROR : Area name "+variableVo.getAreaName()+" is not in the Area Master. <br>";
				addActionMessage("ERROR : Area name "+variableVo.getAreaName()+" is not in the Area Master. <br>");
				flag=false;
			}
			if(variableVo.getUnitId() == (null)){
				emailError = emailError + "ERROR : Unit name "+variableVo.getAreaName()+" is not in the Unit Master. <br>";
				addActionMessage("ERROR : Unit name "+variableVo.getAreaName()+" is not in the Unit Master. <br>");
				flag = false;
			}
					
			if(flag){
				errorMsg = service.insertVariable(variableVo);
				if(errorMsg != "")
					addActionMessage(errorMsg);
			}	
			else
				emailError = emailError + "********************************************<br>";
		
		}
		
		variableList = service.getVariableList();
		linkAction(variableList);
		
		
		if (this.hasActionMessages()) {
			return INPUT;
		} else {
			return SUCCESS;
		}
		
		/*if(emailError != ""){
			addActionMessage(emailError);
			return INPUT;
		}else{
			return SUCCESS;
		}*/
	}
	
	private void linkAction(List<VariableVo> list) {
		int i = 0;
		String link;
		for (VariableVo vo : list) {
			link = "<a href=\"variable.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-variable.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}

	private boolean validationSuccessful() {
		if (variableVo.getVariableName() == null
				|| variableVo.getVariableName().trim().length() < 1) {
			addActionMessage("Variable name is required");
		}
		/*if (variableVo.getVariableId() == null
				|| variableVo.getVariableId().trim().length() < 1) {
			addActionMessage("Variable code is required");
		}*/
		if (variableVo.getDefinition() == null
				|| variableVo.getDefinition().trim().length() < 1) {
			addActionMessage("Variable definition is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static VariableService getService() {
		return service;
	}

	public static void setService(VariableService service) {
		VariableAction.service = service;
	}

	public List<VariableVo> getVariableList() {
		return variableList;
	}

	public void setVariableList(List<VariableVo> variableList) {
		this.variableList = variableList;
	}

	public VariableVo getVariableVo() {
		return variableVo;
	}

	public void setVariableVo(VariableVo variableVo) {
		this.variableVo = variableVo;
	}

	public List<DropDownVo> getUnitList() {
		return unitList;
	}

	public void setUnitList(List<DropDownVo> unitList) {
		this.unitList = unitList;
	}

	public List<DropDownVo> getAreaList() {
		return areaList;
	}

	public void setAreaList(List<DropDownVo> areaList) {
		this.areaList = areaList;
	}
	
	
}
