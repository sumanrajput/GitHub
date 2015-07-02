package in.igsa.masters.prototype;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PrototypeAction extends ActionSupport {	
	private static final long serialVersionUID = 1L;
	private static PrototypeService service = new PrototypeServiceImpl();
	private List<PrototypeVo> prototypeList = new ArrayList<PrototypeVo>();
	private PrototypeVo prototypeVo = new PrototypeVo();
	private String link;
	
	public String getPrototype() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		prototypeList = service.getPrototypeList();
		linkAction(prototypeList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println(" Id Value is :    "+id);
		if (id != null) {
			prototypeVo = service.getPrototypeById(id);
			prototypeVo.setTblId(id);
			prototypeVo.setUpdatedBy((String)session.get("user_id"));
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			prototypeVo.setCreatedBy((String)session.get("user_id"));
			System.out.println("  else call "+prototypeVo.getCreatedBy());
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deletePrototype() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deletePrototypeById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");
		if (id != null) {
			prototypeVo.setTblId(session.get("id").toString());
			prototypeVo.setUpdatedBy(session.get("user_id").toString());
		}
	
		
	System.out.println(" updated By  :   " + prototypeVo.getUpdatedBy() + " \n\n");
		isSuccessfullyInserted = service.updatePrototype(prototypeVo);
		if (!validationSuccessful()) {
			prototypeList = service.getPrototypeList();
			linkAction(prototypeList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			isSuccessfullyInserted = 0;
			session.remove("id");
		} else {
			prototypeVo.setCreatedBy(session.get("user_id").toString());
			service.insertPrototype(prototypeVo);
		}
		return SUCCESS;
	}
	private void linkAction(List<PrototypeVo> list) {
		int i=0;
		for (PrototypeVo vo : list) {
			link = "<a href=\"prototype.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-prototype.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}
	private boolean validationSuccessful() {
		if (prototypeVo.getModelId() == null || prototypeVo.getModelId().trim().length() < 1) {
			addActionMessage("Model id is required");
		}
		if (prototypeVo.getVersion() == null || prototypeVo.getVersion().trim().length() < 1) {
			addActionMessage("Version is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static PrototypeService getService() {
		return service;
	}

	public static void setService(PrototypeService service) {
		PrototypeAction.service = service;
	}

	public List<PrototypeVo> getPrototypeList() {
		return prototypeList;
	}

	public void setPrototypeList(List<PrototypeVo> prototypeList) {
		this.prototypeList = prototypeList;
	}

	public PrototypeVo getPrototypeVo() {
		return prototypeVo;
	}

	public void setPrototypeVo(PrototypeVo prototypeVo) {
		this.prototypeVo = prototypeVo;
	}
}
