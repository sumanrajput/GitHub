package in.igsa.masters.role;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RoleAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static RoleService service = new RoleServiceImpl();
	private String roleId;
	private String roleName;
	private String link;
	private List<RoleVo> roleList = new ArrayList<RoleVo>();
	private RoleVo roleVo = new RoleVo();
	
	public String getRole() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		roleList = service.getRoleList();
		linkAction(roleList);
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String id = (String) request.getParameter("id");
		System.out.println("Role ID  " + id);
		if (id != null) {
			roleVo = service.getRoleById(id);
			roleId = roleVo.getRoleId();
			roleName = roleVo.getRoleName();
			request.setAttribute("id", id);
			session.put("id", id);// use for update
		} else {
			id = null;
			session.remove("id");
		}
		return SUCCESS;
	}

	public String deleteRole() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		service.deleteRoleById(request.getParameter("id"));
		return SUCCESS;
	}

	public String insertOrUpdate() throws Exception {
		int isSuccessfullyInserted = 0;
		Map<String, Object> session = ActionContext.getContext().getSession();
		String id = (String) session.get("id");
		RoleVo vo = new RoleVo();
		vo.setRoleName(roleName);
		vo.setRoleId(roleId);
		//LoginVo user = (LoginVo) session.get("user_id");
		if (id != null) {
			vo.setTblId(id);
			vo.setUpdatedBy((String)session.get("user_id"));
		}
		isSuccessfullyInserted = service.updateRole(vo);
		if (!validationSuccessful()) {
			roleList = service.getRoleList();
			linkAction(roleList);
			return INPUT;
		} else if (isSuccessfullyInserted == 1) {
			session.remove("id");
			id = null;
			isSuccessfullyInserted = 0;
		} else {
			System.out.println("Insert Call");
			vo.setCreatedBy((String)session.get("user_id"));
			service.insertRole(vo);
		}
		return SUCCESS;
	}
	private void linkAction(List<RoleVo> list) {
		int i=0;
		for (RoleVo vo : list) {
			link = "<a href=\"role.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Edit</a> | "
					+ "<a href=\"delete-role.html?id="
					+ String.valueOf(vo.getTblId()) + "\">Delete</a>";
			i++;
			vo.setTableIndex(String.valueOf(i));
			vo.setLink(link);
		}
	}
	private boolean validationSuccessful() {
		if (roleName == null || roleName.trim().length() < 1) {
			addActionMessage("Role name is required");
		}
		if (roleId == null || roleId.trim().length() < 1) {
			addActionMessage("Role code is required");
		}
		if (this.hasActionMessages()) {
			return false;
		} else {
			return true;
		}
	}

	public static RoleService getService() {
		return service;
	}

	public static void setService(RoleService service) {
		RoleAction.service = service;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public List<RoleVo> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<RoleVo> roleList) {
		this.roleList = roleList;
	}

	public RoleVo getRoleVo() {
		return roleVo;
	}

	public void setRoleVo(RoleVo roleVo) {
		this.roleVo = roleVo;
	}
}