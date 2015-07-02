package in.igsa.masters.standardized;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class StandardizedVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;

	private String tblId;
	private String  standardizedId;
	private String  standardizedName;
	private String tableIndex;
	private String link;
	private String status;
	public String getTblId() {
		return tblId;
	}
	public void setTblId(String tblId) {
		this.tblId = tblId;
	}
	public String getStandardizedId() {
		return  standardizedId;
	}
	public void setStandardizedId(String  standardizedId) {
		this. standardizedId =  standardizedId;
	}
	public String getStandardizedName() {
		return  standardizedName;
	}
	public void setStandardizedName(String  standardizedName) {
		this. standardizedName =  standardizedName;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
