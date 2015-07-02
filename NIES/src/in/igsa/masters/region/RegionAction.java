package in.igsa.masters.region;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegionAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static RegionService service = new RegionServiceImpl();
	private String regionId;
	private String regionName;
	private String link;
	private List<RegionVo> regionList = new ArrayList<RegionVo>();
	private RegionVo regionVo = new RegionVo();
	
	public String getRegion() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		regionList = service.getRegionList();
		linkAction(regionList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("Region ID  " + id);
		if (id != null) {
			regionVo = service.getRegionById(id);
			regionId = regionVo.getRegionId();
			regionName = regionVo.getRegionName();
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteRegion() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteRegionById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");
		RegionVo vo = new RegionVo();
		vo.setRegionName(regionName);
		vo.setRegionId(regionId);
		//LoginVo user = (LoginVo) session.get("user_id");
		if (id != null) {
			vo.setTblId(id);
			vo.setUpdatedBy((String)session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateRegion(vo);
		if (!validationSuccessful()) {
			regionList = service.getRegionList();
			linkAction(regionList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			vo.setCreatedBy((String)session.get("user_id"));
			service.insertRegion(vo);
		}
		return SUCCESS;
	}
	private void linkAction(List<RegionVo> list) {
		int i=0;
		for (RegionVo vo : list) {
			link = "<a href=\"region.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-region.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}
	private boolean validationSuccessful() {
		if (regionName == null || regionName.trim().length() < 1) {
			addActionMessage("Region name is required");
		}
		if (regionId == null || regionId.trim().length() < 1) {
			addActionMessage("Region code is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static RegionService getService() {
		return service;
	}

	public static void setService(RegionService service) {
		RegionAction.service = service;
	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public List<RegionVo> getRegionList() {
		return regionList;
	}

	public void setRegionList(List<RegionVo> regionList) {
		this.regionList = regionList;
	}

	public RegionVo getRegionVo() {
		return regionVo;
	}

	public void setRegionVo(RegionVo regionVo) {
		this.regionVo = regionVo;
	}
}
