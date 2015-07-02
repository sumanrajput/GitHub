package in.igsa.masters.unit;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UnitAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static UnitService service = new UnitServiceImpl();
	private String unitId;
	private String unitName;
	private String link;
	private List<UnitVo> unitList = new ArrayList<UnitVo>();
	private UnitVo unitVo = new UnitVo();
	
	public String getUnit() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		unitList = service.getUnitList();
		linkAction(unitList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("Unit ID  " + id);
		if (id != null) {
			unitVo = service.getUnitById(id);
			unitId = unitVo.getUnitId();
			unitName = unitVo.getUnitName();
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteUnit() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteUnitById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");
		UnitVo vo = new UnitVo();
		vo.setUnitName(unitName);
		vo.setUnitId(unitId);
		//LoginVo user = (LoginVo) session.get("user_id");
		if (id != null) {
			vo.setTblId(id);
			vo.setUpdatedBy((String)session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateUnit(vo);
		if (!validationSuccessful()) {
			unitList = service.getUnitList();
			linkAction(unitList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			vo.setCreatedBy((String)session.get("user_id"));
			service.insertUnit(vo);
		}
		return SUCCESS;
	}
	private void linkAction(List<UnitVo> list) {
		int i=0;
		for (UnitVo vo : list) {
			link = "<a href=\"unit.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-unit.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}
	private boolean validationSuccessful() {
		if (unitName == null || unitName.trim().length() < 1) {
			addActionMessage("Unit name is required");
		}
		if (unitId == null || unitId.trim().length() < 1) {
			addActionMessage("Unit code is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static UnitService getService() {
		return service;
	}

	public static void setService(UnitService service) {
		UnitAction.service = service;
	}

	public String getUnitId() {
		return unitId;
	}

	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public List<UnitVo> getUnitList() {
		return unitList;
	}

	public void setUnitList(List<UnitVo> unitList) {
		this.unitList = unitList;
	}

	public UnitVo getUnitVo() {
		return unitVo;
	}

	public void setUnitVo(UnitVo unitVo) {
		this.unitVo = unitVo;
	}
}
