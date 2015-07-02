package in.igsa.masters.unit;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class UnitVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String tblId;
	private String unitId;
	private String unitName;
	private String link;
	private String status;
	private String tableIndex;
	public UnitVo() {

	}
	public String getTblId() {
		return tblId;
	}
	public void setTblId(String tblId) {
		this.tblId = tblId;
	}
	public String getUnitId() {
		return unitId;
	}
	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
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
