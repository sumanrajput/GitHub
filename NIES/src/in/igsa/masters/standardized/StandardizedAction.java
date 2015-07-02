package in.igsa.masters. standardized;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;

import utils.UtilFunctions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class StandardizedAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private static final Log log = LogFactory.getLog(StandardizedAction.class);
	private static StandardizedService service = new StandardizedServiceImpl();
	private String   standardizedId;
	private String   standardizedName;
	private String link;
	private List<StandardizedVo>  standardizedList = new ArrayList<StandardizedVo>();
	private StandardizedVo  standardizedVo = new StandardizedVo();
	
	public String getAllStandardized() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		 standardizedList = service.getStandardizedList();
		System.out.println(" standardizedList  "+ standardizedList.size());
		linkAction( standardizedList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("Standardized ID  " + id);
		if (id != null) {
			 standardizedVo = service.getStandardizedById(id);
			 standardizedId =  standardizedVo.getStandardizedId();
			 standardizedName =  standardizedVo.getStandardizedName();
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteStandardized() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteStandardizedById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");
		StandardizedVo vo = new StandardizedVo();
		vo.setStandardizedName(standardizedName);
		vo.setStandardizedId( standardizedId);
		//LoginVo user = (LoginVo) session.get("user_id");
		if (id != null) {
			vo.setTblId(id);
			vo.setUpdatedBy((String)session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateStandardized(vo);
		if (!validationSuccessful()) {
			 standardizedList = service.getStandardizedList();
			linkAction( standardizedList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			vo.setCreatedBy((String)session.get("user_id"));
			service.insertStandardized(vo);
		}
		return SUCCESS;
	}
	private void linkAction(List<StandardizedVo> list) {
		int i=0;
		for (StandardizedVo vo : list) {
			link = "<a href=\" standardized.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete- standardized.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
		int tblid = UtilFunctions.getMaxTblid("standardized_region_m_details")+1;
		String varId;
		
		if(tblid < 10)
			varId = "SR00"+tblid;
		else if(tblid < 100)
			varId = "SR0"+tblid;
		else
			varId = "SR"+tblid;
		standardizedId = varId;
	}
	private boolean validationSuccessful() {
		if ( standardizedName == null ||  standardizedName.trim().length() < 1) {
			addActionMessage("Standardized name is required");
		}
		if ( standardizedId == null ||  standardizedId.trim().length() < 1) {
			addActionMessage("Standardized code is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static StandardizedService getService() {
		return service;
	}

	public static void setService(StandardizedService service) {
		StandardizedAction.service = service;
	}

	public String getStandardizedId() {
		return standardizedId;
	}

	public void setStandardizedId(String standardizedId) {
		this.standardizedId = standardizedId;
	}

	public String getStandardizedName() {
		return standardizedName;
	}

	public void setStandardizedName(String standardizedName) {
		this.standardizedName = standardizedName;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public List<StandardizedVo> getStandardizedList() {
		return standardizedList;
	}

	public void setStandardizedList(List<StandardizedVo> standardizedList) {
		this.standardizedList = standardizedList;
	}

	public StandardizedVo getStandardizedVo() {
		return standardizedVo;
	}

	public void setStandardizedVo(StandardizedVo standardizedVo) {
		this.standardizedVo = standardizedVo;
	}
}
