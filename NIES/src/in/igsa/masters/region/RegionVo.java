package in.igsa.masters.region;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class RegionVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String regionId;
	private String tblId;
	private String regionName;
	private String link;
	private String status;
	private String tableIndex;

	public RegionVo() {

	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getTblId() {
		return tblId;
	}

	public void setTblId(String tblId) {
		this.tblId = tblId;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
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
