package in.igsa.series;

import in.igsa.manage.MasterService;
import in.igsa.manage.MasterServiceImpl;
import in.igsa.upload.FileUploadVo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SeriesAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private List<FileUploadVo> seriesDataReport =  new ArrayList<FileUploadVo>();
	private SeriesService service = new SeriesServiceImpl();
	private List<String> year = new ArrayList<String>();
	private MasterService masterService = new MasterServiceImpl();
	private List<String> variableList = new ArrayList<>();
	private List<String> scenarioList = new ArrayList<>();
	private List<String> modelList = new ArrayList<>();
	
	
	@Override
	public String execute() throws Exception {
		modelList = masterService.getModelNames();
		scenarioList = service.getScenarioNames();
		variableList = masterService.getVariableNames();
		return SUCCESS;
	}
	
	public String seriesData() throws Exception{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = ActionContext.getContext().getSession();
		List<FileUploadVo> seriesDataValue = new ArrayList<FileUploadVo>();
		String region[] = request.getParameter("region").split(",");
		String scenario[] = request.getParameter("scenario").split(",");
		String variable = (String) request.getParameter("variable");
		String model[] = request.getParameter("model").split(",");
		FileUploadVo vo = new FileUploadVo();
		List<String> tempValues = new ArrayList<String>();
		List<String> tempValues1 = new ArrayList<String>();
		List<String> tempValues2 = new ArrayList<String>();

		
		for (String str : model) {
			if(str.trim().equals("_2"))
				continue;
			tempValues.add(str.trim());
		}
		vo.setModels(tempValues);

		for (String str : scenario) {
			if(str.trim().equals("_2"))
				continue;
			tempValues1.add(str.trim());
		}
		vo.setScenarios(tempValues1);

		for (String str : region) {
			if(str.trim().equals("_2"))
				continue;
			tempValues2.add(str.trim());
		}
		vo.setRegions(tempValues2);

		
		
		//vo.setRegion(region);
		//vo.setScenario(scenario);
		vo.setVariable(variable);
		//vo.setModel(model);
		vo.setUploadedBy((String)session.get("user_id"));
		
		seriesDataReport = service.getSeriesData(vo);
		
		
		for (FileUploadVo vo1 : seriesDataReport) {
			//System.out.println(vo1.getModel());
			seriesDataValue = service.getSeriesDataValue(vo1);
			List<String> yy = new ArrayList<String>();
			List<String> yyval = new ArrayList<String>();
			String temp = "",temp1 = "";
			
			for(FileUploadVo vo2 : seriesDataValue){
				yy.add(vo2.getYy());
				temp = temp + "    |     "+vo2.getYy()+"    |     ";
				temp1 = temp1 + "<td>" +vo2.getYyVal()+"</td>";
				yyval.add(vo2.getYyVal()); 
			}
			
			vo1.setYy(temp);
			vo1.setYyVal(temp1);
			year = yy;
			//vo1.setYear(yy);
			vo1.setVal(yyval);
		}
		
		
		return SUCCESS;
	}


	public List<FileUploadVo> getSeriesDataReport() {
		return seriesDataReport;
	}

	public void setSeriesDataReport(List<FileUploadVo> seriesDataReport) {
		this.seriesDataReport = seriesDataReport;
	}

	public SeriesService getService() {
		return service;
	}

	public void setService(SeriesService service) {
		this.service = service;
	}

	public List<String> getYear() {
		return year;
	}

	public void setYear(List<String> year) {
		this.year = year;
	}

	public List<String> getVariableList() {
		return variableList;
	}

	public void setVariableList(List<String> variableList) {
		this.variableList = variableList;
	}

	public List<String> getScenarioList() {
		return scenarioList;
	}

	public void setScenarioList(List<String> scenarioList) {
		this.scenarioList = scenarioList;
	}

	public List<String> getModelList() {
		return modelList;
	}

	public void setModelList(List<String> modelList) {
		this.modelList = modelList;
	}
	
	
	
	/*
	
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = ActionContext.getContext().getSession();
		List<FileUploadVo> seriesDataValue = new ArrayList<FileUploadVo>();
		String region[] = request.getParameter("region").split(",");
		String scenario[] = request.getParameter("scenario").split(",");
		String variable = (String) request.getParameter("variable");
		String model[] = request.getParameter("model").split(",");
		FileUploadVo vo = new FileUploadVo();
		List<String> tempValues = new ArrayList<String>();
		
		for (String str : model) {
			if(str.trim().equals("_2"))
				continue;
			tempValues.add(str.trim());
		}
		vo.setModels(tempValues);
		//System.out.println("Model size  "+tempValues.size());
		tempValues.clear();
		//System.out.println("After Clear Model size  "+tempValues.size());
		
		for (String str : region) {
			if(str.trim().equals("_2"))
				continue;
			tempValues.add(str.trim());
		}
		vo.setRegions(tempValues);
		//System.out.println("Region size  "+tempValues.size());
		tempValues.clear();
		//System.out.println("After Clear Region size  "+tempValues.size());
		
		for (String str : scenario) {
			if(str.trim().equals("_2"))
				continue;
			tempValues.add(str.trim());
		}
		vo.setScenarios(tempValues);
		//System.out.println("scenario size  "+tempValues.size());
		tempValues.clear();
		//System.out.println("After Clear Region size  "+tempValues.size());
		
		//System.out.println(" Execute Function SeriesData ");
		
		vo.setVariable(variable);
		
		//vo.setModel(model);
		vo.setUploadedBy((String)session.get("user_id"));
		
		seriesDataReport = service.getSeriesData(vo);
		
		
		for (FileUploadVo vo1 : seriesDataReport) {
			//System.out.println(vo1.getModel());
			seriesDataValue = service.getSeriesDataValue(vo1);
			List<String> yy = new ArrayList<String>();
			List<String> yyval = new ArrayList<String>();
			String temp = "",temp1 = "";
			
			for(FileUploadVo vo2 : seriesDataValue){
				yy.add(vo2.getYy());
				temp = temp + "    |     "+vo2.getYy()+"    |     ";
				temp1 = temp1 + "<td>" +vo2.getYyVal()+"</td>";
				yyval.add(vo2.getYyVal()); 
			}
			
			vo1.setYy(temp);
			vo1.setYyVal(temp1);
			year = yy;
			//vo1.setYear(yy);
			vo1.setVal(yyval);
		}
		
		
		return SUCCESS;
	
	 */
	
	
}
