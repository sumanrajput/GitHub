package in.igsa.login;

import java.math.BigInteger;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.Remove;
import org.apache.struts2.ServletActionContext;

import utils.RandomString;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ForgetPasswordAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static final Random RANDOM = new Random();
	private String EMAIL_TITLE;
	private String EMAIL_MESSAGE;
	private LoginVo login = new LoginVo();
	private Map<String, Object> session;
	private String loginId = null;
	private String eMail;
	
	public String validateUser() throws Exception {
		LoginService service = new LoginServiceImpl();
		session = ActionContext.getContext().getSession();
		System.out.println("login.getUserId()  "+login.getUserId());
		loginId = service.getUserId(login.getUserId());
		System.out.println("loginId  "+loginId);
			if(loginId!= null && !loginId.isEmpty() && loginId.equals(login.getUserId())){
				login.setPassword(new RandomString(5).nextString());
				login.setUserId(login.getUserId());
				int update = service.changePassword(login);
				if(update==1){
					LoginVo vo = service.getEmailId(loginId);
					String password  = vo.getPassword();
					EMAIL_TITLE ="NIES - Password Reset Request.";
					EMAIL_MESSAGE = "Dear "+vo.getUserName()+",<br/><br/>"
							+ "&nbsp;&nbsp;&nbsp; We have received a password reset request from you on NIES."
							+ "<br/>"
							+ "&nbsp;&nbsp;&nbsp; Your reset password is,<i> <b>"+password+"</b> </i><br/><br/>"
									+ "Regards, <br/>"
									+ "NIES";
					eMail = vo.getUserEmail();
					System.out.println("Reset Password  "+password);
					session.put("eMailID", eMail);
					addActionMessage("Email Send  "+eMail);
					utils.SendEmail.send("4igsalabs@gmail.com", eMail, EMAIL_TITLE, EMAIL_MESSAGE);
					return SUCCESS;
				}
				eMail = null;
				session.remove("eMailID");
				addActionError("Reset password error !");
				return ERROR;
			}else{
				eMail = null;
				session.remove("eMailID");
				addActionError("Invalid username !");
				return ERROR;
			}
	}

	public LoginVo getLogin() {
		return login;
	}

	public void setLogin(LoginVo login) {
		this.login = login;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
}
