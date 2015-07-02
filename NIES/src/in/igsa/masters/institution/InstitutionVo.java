package in.igsa.masters.institution;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class InstitutionVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String tblId;
	private String institutionId;
	private String institutionName;
	private String link;
	private String status;
	private String tableIndex;

	public InstitutionVo() {

	}

	public String getTblId() {
		return tblId;
	}

	public void setTblId(String tblId) {
		this.tblId = tblId;
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
