package in.igsa.masters.role;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class RoleVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String tblId;
	private String roleId;
	private String roleName;
	private String link;
	private String status;
	private String tableIndex;

	public RoleVo() {

	}

	public String getTblId() {
		return tblId;
	}

	public void setTblId(String tblId) {
		this.tblId = tblId;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTableIndex() {
		return tableIndex;
	}

	public void setTableIndex(String tableIndex) {
		this.tableIndex = tableIndex;
	}
}
