package in.igsa.manage.modelregion;

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

public class ModelRegionAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static ModelRegionService service = new ModelRegionServiceImpl();
   
	private List<ModelRegionVo> modelRegionList = new ArrayList<ModelRegionVo>();
	private List<DropDownVo> modelIdList = new ArrayList<DropDownVo>();
	private List<DropDownVo> regionList = new ArrayList<DropDownVo>();
	private ModelRegionVo modelRegionVo = new ModelRegionVo();
	
	public String getModelRegion() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		DropDownServices dService = new DropDownServicesImpl();
		modelIdList = dService.populateCombo("getAllModels");
		regionList = dService.populateCombo("getAllRegions");
		modelRegionList = service.getModelRegion();
		linkAction(modelRegionList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("ModelRegion ID  " + id);
		if (id != null) {
			modelRegionVo = service.getModelRegionById(id);
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
		service.deleteModelRegionById(request.getParameter("id"));
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
		isSuccessfullyInserted = service.updateModelRegion(modelRegionVo);
		if (!validationSuccessful()) {
			modelRegionList = service.getModelRegion();
			linkAction(modelRegionList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call "+modelRegionVo.getRegionId());
			modelRegionVo.setCreatedBy((String)session.get("user_id"));
			service.insertModelRegion(modelRegionVo);
			
		}
		return SUCCESS;
	}
	private void linkAction(List<ModelRegionVo> list) {
		int i=0;
		String link;
		for (ModelRegionVo vo : list) {
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
			addActionMessage("ModelRegion name is required");
		}
		if (modelRegionVo.getRegionId() == null || modelRegionVo.getRegionId().trim().length() < 1) {
			addActionMessage("ModelRegion code is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static ModelRegionService getService() {
		return service;
	}

	public static void setService(ModelRegionService service) {
		ModelRegionAction.service = service;
	}

	public List<DropDownVo> getModelIdList() {
		return modelIdList;
	}

	public void setModelIdList(List<DropDownVo> modelIdList) {
		this.modelIdList = modelIdList;
	}

	public List<ModelRegionVo> getModelRegionList() {
		return modelRegionList;
	}

	public void setModelRegionList(List<ModelRegionVo> modelRegionList) {
		this.modelRegionList = modelRegionList;
	}

	public List<DropDownVo> getRegionList() {
		return regionList;
	}

	public void setRegionList(List<DropDownVo> regionList) {
		this.regionList = regionList;
	}

	public ModelRegionVo getModelRegionVo() {
		return modelRegionVo;
	}

	public void setModelRegionVo(ModelRegionVo modelRegionVo) {
		this.modelRegionVo = modelRegionVo;
	}
}
