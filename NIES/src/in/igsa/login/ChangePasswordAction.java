package in.igsa.login;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private LoginVo login = new LoginVo();
	private LoginService service = new LoginServiceImpl();
	private Map<String, Object> session = ActionContext.getContext().getSession();
	
	String userId = (String)session.get("user_id");
	
	public String passwordChange() throws Exception {
		if (userId!=null && !userId.equalsIgnoreCase("null")){
			String oldPassword = service.getPasswordById(userId);
			if(oldPassword!=null && oldPassword.equalsIgnoreCase(login.getOldPassword())){
				login.setUpdatedBy(userId);
				login.setUserId(userId);
				System.out.println("first if passwordChange  "+login.getPassword() +"     "+login.getUpdatedBy()+"  "+login.getUserId());
				int upda = service.changePassword(login);
				if(upda==1){
					addActionMessage("Password changed successfullu");
				}
				System.out.println("Updat change password  "+upda);
				return SUCCESS;
			}else{
				addActionError("Invalid old password!");
			return ERROR;
			}
		}else{
			return INPUT;
		}
	}

	public LoginVo getLogin() {
		return login;
	}

	public void setLogin(LoginVo login) {
		this.login = login;
	}

	public LoginService getService() {
		return service;
	}

	public void setService(LoginService service) {
		this.service = service;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
