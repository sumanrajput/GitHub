package in.igsa.masters.institution;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InstitutionAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static InstitutionService service = new InstitutionServiceImpl();
	private String institutionId;
	private String institutionName;
	private String link;
	private List<InstitutionVo> institutionList = new ArrayList<InstitutionVo>();
	private InstitutionVo institutionVo = new InstitutionVo();
	
	public String getInstitution() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		institutionList = service.getInstitutionList();
		linkAction(institutionList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("Institution ID  " + id);
		if (id != null) {
			institutionVo = service.getInstitutionById(id);
			institutionId = institutionVo.getInstitutionId();
			institutionName = institutionVo.getInstitutionName();
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteInstitution() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteInstitutionById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");
		InstitutionVo vo = new InstitutionVo();
		vo.setInstitutionName(institutionName);
		vo.setInstitutionId(institutionId);
		//LoginVo user = (LoginVo) session.get("user_id");
		if (id != null) {
			vo.setTblId(id);
			vo.setUpdatedBy((String)session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateInstitution(vo);
		if (!validationSuccessful()) {
			institutionList = service.getInstitutionList();
			linkAction(institutionList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			vo.setCreatedBy((String)session.get("user_id"));
			service.insertInstitution(vo);
		}
		return SUCCESS;
	}
	private void linkAction(List<InstitutionVo> list) {
		int i=0;
		for (InstitutionVo vo : list) {
			link = "<a href=\"institution.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-institution.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}
	private boolean validationSuccessful() {
		if (institutionName == null || institutionName.trim().length() < 1) {
			addActionMessage("Institution name is required");
		}
		if (institutionId == null || institutionId.trim().length() < 1) {
			addActionMessage("Institution code is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static InstitutionService getService() {
		return service;
	}

	public static void setService(InstitutionService service) {
		InstitutionAction.service = service;
	}

	public String getInstitutionId() {
		return institutionId;
	}

	public void setInstitutionId(String institutionId) {
		this.institutionId = institutionId;
	}

	public String getInstitutionName() {
		return institutionName;
	}

	public void setInstitutionName(String institutionName) {
		this.institutionName = institutionName;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public List<InstitutionVo> getInstitutionList() {
		return institutionList;
	}

	public void setInstitutionList(List<InstitutionVo> institutionList) {
		this.institutionList = institutionList;
	}

	public InstitutionVo getInstitutionVo() {
		return institutionVo;
	}

	public void setInstitutionVo(InstitutionVo institutionVo) {
		this.institutionVo = institutionVo;
	}
}
