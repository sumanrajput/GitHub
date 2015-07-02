package in.igsa.masters.user;

import in.igsa.common.CommonVo;

import java.io.File;
import java.io.Serializable;

public class UserVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String tblId;
	private String userId;
	private String userName;
	private String userEmail;
	private String roleName;
	private String roleId;
	private String institutionId;
	private String institutionName;
	private String countryId;
	private String countryName;
	private String modelId;
	private String address;
	private String view;
	private String update;
	private String status;
	private String contactNumber;
	private String tableIndex;
	private String link;
	
	private String imageFilePath;
	private String contentType;
	private File userImage;
	private String fileName;
	
	
	
	
	
	// since we are using <s:file name="userImage" .../> the file name will be
	// obtained through getter/setter of <file-tag-name>FileName
	public String getUserImageFileName() {
	return fileName;
	}
	 
	public void setUserImageFileName(String fileName) {
	this.fileName = fileName;
	}
	 
	
	// since we are using <s:file name="userImage" ... /> the content type will be
	// obtained through getter/setter of <file-tag-name>ContentType
	public String getUserImageContentType() {
	return contentType;
	}
	 
	public void setUserImageContentType(String contentType) {
	this.contentType = contentType;
	}
	 
	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}
	

	public String getTblId() {
		return tblId;
	}

	public void setTblId(String tblId) {
		this.tblId = tblId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getInstitutionId() {
		return institutionId;
	}

	public void setInstitutionId(String institutionId) {
		this.institutionId = institutionId;
	}

	public String getInstitutionName() {
		return institutionName;
	}

	public void setInstitutionName(String institutionName) {
		this.institutionName = institutionName;
	}

	public String getCountryId() {
		return countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getModelId() {
		return modelId;
	}

	public void setModelId(String modelId) {
		this.modelId = modelId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	public String getUpdate() {
		return update;
	}

	public void setUpdate(String update) {
		this.update = update;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getTableIndex() {
		return tableIndex;
	}

	public void setTableIndex(String tableIndex) {
		this.tableIndex = tableIndex;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}


	public String getImageFilePath() {
		return imageFilePath;
	}

	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}
	
	
	
	
}
