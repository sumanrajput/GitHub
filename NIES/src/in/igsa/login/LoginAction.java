package in.igsa.login;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.struts2.interceptor.validation.SkipValidation;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private final static String ADMIN = "admin_login";
	private static final Random RANDOM = new Random();

	private LoginVo login = new LoginVo();
	private String userId;
	private String password;
	private String role;
	private Map<String, Object> session;

	public static Random getRandom() {
		return RANDOM;
	}

	public static String generateGUID() {
		return new BigInteger(165, RANDOM).toString(36).toUpperCase();
	}

	public String execute() throws Exception {
		LoginService service = new LoginServiceImpl();
		List<LoginVo> list = service.getLogin(userId);
		if (list != null && list.size() > 0) {
			boolean isLogin = false;
			for (LoginVo vo : list) {
				if (password.equals(vo.getPassword())) {
					isLogin = true;
					role = vo.getRoleId();
					session = ActionContext.getContext().getSession();
					session.put("logged-in", true);
					session.put("user_name", vo.getUserName());
					session.put("user_id", userId);
					session.put("sessionId", generateGUID());
					session.put("user_email", vo.getUserEmail());
					session.put("user_image", vo.getImageFilePath());
					session.put("ROLE", role);
					break;
				}
			}

			if (isLogin) {
				if (role.equalsIgnoreCase("R001")) {
					return ADMIN;
				} else {
					return SUCCESS;
				}
			} else {
				addActionError("Invalid Log in or Password!");
				return ERROR;
			}
		}
		addActionError("Invalid Log in !");
		return ERROR;
	}

	@SkipValidation
	public String logoff() {
		session = ActionContext.getContext().getSession();
		session.remove("logged-in");
		session.remove("user_name");
		session.remove("user_id");
		session.clear();
		return SUCCESS;

	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public LoginVo getLogin() {
		return login;
	}

	public void setLogin(LoginVo login) {
		this.login = login;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	
}
