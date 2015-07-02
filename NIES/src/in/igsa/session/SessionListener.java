package in.igsa.session;

import in.igsa.login.LoginService;
import in.igsa.login.LoginServiceImpl;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import utils.Constants;

public class SessionListener implements HttpSessionBindingListener {

	private static int activeSessions = 0;
	private String remoteIP = null;

	public String getRemoteIP() {
		return this.remoteIP;
	}

	public void setRemoteIP(String remoteIP) {
		this.remoteIP = remoteIP;
	}

	/* Session Creation Event */
	public void valueBound(HttpSessionBindingEvent event) {
		SessionVo vo = new SessionVo();
		HttpSession session = event.getSession();
		vo.setLoginEmail(session.getAttribute("loginEmail").toString());
		vo.setSessionId(session.getAttribute("sessionId").toString());
		InetAddress thisIp;
		try {
			thisIp = InetAddress.getLocalHost();
			System.out.println("IP:" + thisIp.getHostAddress());
			vo.setIpAddress(thisIp.getHostAddress());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		vo.setLoginDateTime((new java.sql.Timestamp(new java.util.Date().getTime())).toString());
		LoginService service = new LoginServiceImpl();
		try {
			/*service.insertLoginLog(vo);*/
			activeSessions++;
		} catch (Exception E) {
			E.printStackTrace();
		}
		Constants.SESSION_EXPIRE = "created";
	}

	/* Session Invalidation Event */
	public void valueUnbound(HttpSessionBindingEvent event) {
		SessionVo vo = new SessionVo();
		HttpSession session = event.getSession();
		vo.setSessionId(session.getAttribute("sessionId").toString());
		vo.setLogoutDateTime((new java.sql.Timestamp(new java.util.Date().getTime())).toString());
		//userInfoTo.setLogoutDateTime(DateTime.getDateTime());
		LoginService service = new LoginServiceImpl();
		try {
			/*service.updateLoginLog(vo);*/
			if (activeSessions > 0)
				activeSessions--;
		} catch (Exception E) {
			E.printStackTrace();
		}
		Constants.SESSION_EXPIRE = "created";
	}

	public static int getActiveSessions() {
		return activeSessions;
	}
}
