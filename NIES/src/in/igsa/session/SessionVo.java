package in.igsa.session;

import java.io.Serializable;

public class SessionVo implements Serializable {

	private static final long serialVersionUID = 1L;
	private String loginEmail;

	private String loginDateTime;

	private String ipAddress;

	private String logoutDateTime;

	private String sessionId;

	public SessionVo() {

	}

	public String getLoginEmail() {
		return loginEmail;
	}

	public void setLoginEmail(String loginEmail) {
		this.loginEmail = loginEmail;
	}

	public String getLoginDateTime() {
		return loginDateTime;
	}

	public void setLoginDateTime(String loginDateTime) {
		this.loginDateTime = loginDateTime;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getLogoutDateTime() {
		return logoutDateTime;
	}

	public void setLogoutDateTime(String logoutDateTime) {
		this.logoutDateTime = logoutDateTime;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
}
