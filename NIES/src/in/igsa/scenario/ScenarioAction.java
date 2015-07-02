package in.igsa.scenario;

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

public class ScenarioAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<FileUploadVo> scenarioReport = new ArrayList<FileUploadVo>();
	private MasterService service = new MasterServiceImpl();
	private List<String> year = new ArrayList<String>();

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext
				.getContext().get(ServletActionContext.HTTP_REQUEST);
		Map<String, Object> session = ActionContext.getContext().getSession();
		List<FileUploadVo> scenarioDataValue = new ArrayList<FileUploadVo>();
		String model = (String) request.getParameter("model");
		String scenario = (String) request.getParameter("scenario");
		FileUploadVo vo = new FileUploadVo();

		// System.out.println("    Model   : "+model+"     sscsfd       :    "+scenario+"     user_id    "+session.get("user_id").toString());

		vo.setModel(model);
		vo.setScenario(scenario);
		vo.setUploadedBy((String) session.get("user_id"));

		scenarioReport = service.getScenarionData(vo);

		for (FileUploadVo vo1 : scenarioReport) {

			scenarioDataValue = service.getScenarionDataValue(vo1);
			List<String> yy = new ArrayList<String>();
			List<String> yyval = new ArrayList<String>();
			String temp = "", temp1 = "";

			for (FileUploadVo vo2 : scenarioDataValue) {
				yy.add(vo2.getYy());
				// yyval.add(vo2.getYyVal());

				temp = temp + "    |     " + vo2.getYy() + "    |     ";
				temp1 = temp1 + "<td>" + vo2.getYyVal() + "</td>";

				// System.out.println("   yy    : "+yy+"    yyval    :    "+yyval);
			}

			vo1.setYy(temp);
			vo1.setYyVal(temp1);
			year = yy;
			// vo1.setYear(yy);
			// vo1.setVal(yyval);
		}

		return SUCCESS;
	}

	public List<FileUploadVo> getScenarioReport() {
		return scenarioReport;
	}

	public void setScenarioReport(List<FileUploadVo> scenarioReport) {
		this.scenarioReport = scenarioReport;
	}

	public MasterService getService() {
		return service;
	}

	public void setService(MasterService service) {
		this.service = service;
	}

	public List<String> getYear() {
		return year;
	}

	public void setYear(List<String> year) {
		this.year = year;
	}

}
