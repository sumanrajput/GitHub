package in.igsa.masters.user.profile;

import in.igsa.masters.user.UserService;
import in.igsa.masters.user.UserServiceImpl;
import in.igsa.masters.user.UserVo;
import in.igsa.popup.DropDownServices;
import in.igsa.popup.DropDownServicesImpl;
import in.igsa.popup.DropDownVo;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileAction extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1L;
	
	static Logger log = Logger.getLogger(ProfileAction.class.getName());
	
	private UserVo userVo = new UserVo();
	private UserService service = new UserServiceImpl();
	
	private List<DropDownVo> institutions = new ArrayList<DropDownVo>();
	private List<DropDownVo> countries = new ArrayList<DropDownVo>();
	private HttpServletRequest servletRequest;  

	Map<String, Object> session = ActionContext.getContext().getSession();
	String userId = (String)session.get("user_id");

	
	public List<DropDownVo> getCountries() {
		return countries;
	}

	public void setCountries(List<DropDownVo> countries) {
		this.countries = countries;
	}

	public String viewProfile() throws Exception {
		if (userId!=null & !userId.equalsIgnoreCase("null")){
			userVo = service.userProfile(userId);
			return SUCCESS;
		}
		else return ERROR;
	}

	public String editProfile() {
		if (userId!=null & !userId.equalsIgnoreCase("null")){
			DropDownServices dService = new DropDownServicesImpl();
			institutions = dService.populateCombo("getAllInstitutions");
			countries = dService.populateCombo("getAllCountries");
			userVo = service.userProfile(userId);
			return SUCCESS;
		}
		else return ERROR;
	}
	
	
	public String updateProfile() throws IOException {
		
			/*	if (userId!=null & !userId.equalsIgnoreCase("null")){*/
			File profileImage = null;
	        String filePath = servletRequest.getSession().getServletContext().getRealPath("/")+"/profile_image/";  
	        String fileExtension;
			
	        fileExtension = userVo.getUserImageFileName().toString().substring(userVo.getUserImageFileName().lastIndexOf(".")+1).trim();
	        profileImage = new File(filePath, userId+"."+fileExtension);
	        
	        FileUtils.copyFile(userVo.getUserImage(), profileImage);
	        
			userVo.setUpdatedBy(userId);
			userVo.setUserId(userId);
			userVo.setImageFilePath("profile_image/"+userId+"."+fileExtension);
			int update = service.updateProfile(userVo);
			System.out.println("updateProfile  update value  "+update);
			
			if(update==1)
				return SUCCESS;
			else{
				DropDownServices dService = new DropDownServicesImpl();
				institutions = dService.populateCombo("getAllInstitutions");
				countries = dService.populateCombo("getAllCountries");
				userVo = service.userProfile(userId);
				return ERROR;
			}
	}

	public UserVo getUserVo() {
		return userVo;
	}

	public void setUserVo(UserVo userVo) {
		this.userVo = userVo;
	}

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}

	public List<DropDownVo> getInstitutions() {
		return institutions;
	}

	public void setInstitutions(List<DropDownVo> institutions) {
		this.institutions = institutions;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

}
