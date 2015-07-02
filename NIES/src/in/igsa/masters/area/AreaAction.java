package in.igsa.masters.area;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AreaAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static AreaService service = new AreaServiceImpl();
	private List<AreaVo> areaList = new ArrayList<AreaVo>();
	private AreaVo area = new AreaVo();

	Map<String, Object> session = ActionContext.getContext().getSession();
	private String userId =  (String) session.get("user_id");
	public String list() throws Exception {
		areaList = service.getAreaList();
		linkAction(areaList);
		return SUCCESS;
	}

	public String edit() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		areaList = service.getAreaList();
		linkAction(areaList);
		area = service.getAreaById(id);
		session.put("id", "id");
		request.setAttribute("id", "id");
		area.setTblId(id);
		return SUCCESS;
	}

	public String delete() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		System.out.println("delete  "+request.getParameter("id"));
		service.deleteAreaById(request.getParameter("id"));
		return SUCCESS;
	}

	public String saveOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		
		area.setUpdatedBy(userId);
		System.out.println("Update  "+area.getAreaId() +"  "+area.getAreaName()+"   "+area.getTblId()+"  "+area.getUpdatedBy());
		isSuccessfullyInserted = service.updateArea(area);
		if (!validationSuccessful()) {
			areaList = service.getAreaList();
			linkAction(areaList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			area.setCreatedBy(userId);
			service.insertArea(area);
		}
		
		
		return SUCCESS;
	}
	
	private boolean validationSuccessful() {
		if (area.getAreaId() == null || area.getAreaId().trim().length() < 1) {
			addFieldError("area.areaId", "Area id is required");
		}
		if (area.getAreaName() == null || area.getAreaName().trim().length() < 1) {
			addFieldError("area.areaName", "Area name is required");
		}
		if (this.hasFieldErrors()) {
			return false;
		} else {
			return true;
		}
	}
	private void linkAction(List<AreaVo> list) {
		int i = 0;
		String link;
		for (AreaVo vo : list) {
			link = "<a href=\"editArea.html?id=" + String.valueOf(vo.getTblId())
					+ "\">Edit</a> | " + "<a href=\"deleteArea.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}

	public static AreaService getService() {
		return service;
	}

	public static void setService(AreaService service) {
		AreaAction.service = service;
	}

	public List<AreaVo> getAreaList() {
		return areaList;
	}

	public void setAreaList(List<AreaVo> areaList) {
		this.areaList = areaList;
	}

	public AreaVo getArea() {
		return area;
	}

	public void setArea(AreaVo area) {
		this.area = area;
	}

}
