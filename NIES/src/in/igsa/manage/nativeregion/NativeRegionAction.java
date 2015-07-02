package in.igsa.manage.nativeregion;

import in.igsa.popup.DropDownServices;
import in.igsa.popup.DropDownServicesImpl;
import in.igsa.popup.DropDownVo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class NativeRegionAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static NativeRegionService service = new NativeRegionServiceImpl();
   
	private List<NativeRegionVo> modelRegionList = new ArrayList<NativeRegionVo>();
	private List<DropDownVo> modelIdList = new ArrayList<DropDownVo>();
	private List<DropDownVo> regionList = new ArrayList<DropDownVo>();
	private NativeRegionVo modelRegionVo = new NativeRegionVo();
	
	public String getModelRegion() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		DropDownServices dService = new DropDownServicesImpl();
		modelIdList = dService.populateCombo("getAllModels");
		regionList = dService.populateCombo("getAllRegions");
		modelRegionList = service.getModelNativeStanderdizeRegion();
		linkAction(modelRegionList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("ModelRegion ID  " + id);
		if (id != null) {
			modelRegionVo = service.getModelNativeStanderdizeRegionById(id);
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteModelRegion() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteModelNativeStanderdizeRegionById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");

		//LoginVo modelRegion = (LoginVo) session.get("modelRegion_id");
		if (id != null) {
			modelRegionVo.setTblId(id);	
			modelRegionVo.setUpdatedBy((String)session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateModelNativeStanderdizeRegion(modelRegionVo);
		if (!validationSuccessful()) {
			modelRegionList = service.getModelNativeStanderdizeRegion();
			linkAction(modelRegionList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call "+modelRegionVo.getRegionId());
			modelRegionVo.setCreatedBy((String)session.get("user_id"));
			service.insertModelNativeStanderdizeRegion(modelRegionVo);
			
		}
		return SUCCESS;
	}
	private void linkAction(List<NativeRegionVo> list) {
		int i=0;
		String link;
		for (NativeRegionVo vo : list) {
			link = "<a href=\"model_region.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete_model_region.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}
	private boolean validationSuccessful() {
		if (modelRegionVo.getModelId() == null || modelRegionVo.getModelId().trim().length() < 1) {
			addActionMessage("Model region name is required");
		}
	
		if (modelRegionVo.getRegionId() == null || modelRegionVo.getRegionId().trim().length() < 1) {
			addActionMessage("Model region code is required");
		}
		
		if (modelRegionVo.getStandardizedName() == null || modelRegionVo.getStandardizedName().trim().length() < 1) {
			addActionMessage("Model Region name is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static NativeRegionService getService() {
		return service;
	}

	public static void setService(NativeRegionService service) {
		NativeRegionAction.service = service;
	}

	public List<DropDownVo> getModelIdList() {
		return modelIdList;
	}

	public void setModelIdList(List<DropDownVo> modelIdList) {
		this.modelIdList = modelIdList;
	}

	public List<NativeRegionVo> getModelRegionList() {
		return modelRegionList;
	}

	public void setModelRegionList(List<NativeRegionVo> modelRegionList) {
		this.modelRegionList = modelRegionList;
	}

	public List<DropDownVo> getRegionList() {
		return regionList;
	}

	public void setRegionList(List<DropDownVo> regionList) {
		this.regionList = regionList;
	}

	public NativeRegionVo getModelRegionVo() {
		return modelRegionVo;
	}

	public void setModelRegionVo(NativeRegionVo modelRegionVo) {
		this.modelRegionVo = modelRegionVo;
	}
}
