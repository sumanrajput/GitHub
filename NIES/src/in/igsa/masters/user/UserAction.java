package in.igsa.masters.user;

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

public class UserAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static UserService service = new UserServiceImpl();
   
	private List<UserVo> userList = new ArrayList<UserVo>();
	private List<DropDownVo> modelIdList = new ArrayList<DropDownVo>();
	private List<DropDownVo> roles = new ArrayList<DropDownVo>();
	private UserVo userVo = new UserVo();
	
	public String getUser() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		DropDownServices dService = new DropDownServicesImpl();
		modelIdList = dService.populateCombo("getAllModels");
		roles = dService.populateCombo("getAllRoles");
		userList = service.getUserAllList();
		linkAction(userList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("User ID  " + id);
		if (id != null) {
			userVo = service.getUserById(id);
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteUser() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteUserById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");

		//LoginVo user = (LoginVo) session.get("user_id");
		if (id != null) {
			userVo.setTblId(id);
			userVo.setUpdatedBy((String)session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateUser(userVo);
		if (!validationSuccessful()) {
			userList = service.getUserAllList();
			linkAction(userList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			userVo.setCreatedBy((String)session.get("user_id"));
			service.insertUser(userVo);
		}
		return SUCCESS;
	}
	private void linkAction(List<UserVo> list) {
		int i=0;
		String link;
		for (UserVo vo : list) {
			link = "<a href=\"user.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-user.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}
	private boolean validationSuccessful() {
		if (userVo.getUserName() == null || userVo.getUserName().trim().length() < 1) {
			addActionMessage("User name is required");
		}
		if (userVo.getUserId() == null || userVo.getUserId().trim().length() < 1) {
			addActionMessage("User code is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static UserService getService() {
		return service;
	}

	public static void setService(UserService service) {
		UserAction.service = service;
	}

	public List<UserVo> getUserList() {
		return userList;
	}

	public void setUserList(List<UserVo> userList) {
		this.userList = userList;
	}

	public UserVo getUserVo() {
		return userVo;
	}

	public void setUserVo(UserVo userVo) {
		this.userVo = userVo;
	}

	public List<DropDownVo> getModelIdList() {
		return modelIdList;
	}

	public void setModelIdList(List<DropDownVo> modelIdList) {
		this.modelIdList = modelIdList;
	}

	public List<DropDownVo> getRoles() {
		return roles;
	}

	public void setRoles(List<DropDownVo> roles) {
		this.roles = roles;
	}
	
	
}
