package in.igsa.manage.nativeregion;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class NativeRegionVo extends CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String tblId;
	private String modelId;
	private String regionId;
	private String regionName;
	private String standardizedId;
	private String standardizedName;
	private String link;
	private String status;
	private String tableIndex;

	public String getTblId() {
		return tblId;
	}

	public void setTblId(String tblId) {
		this.tblId = tblId;
	}

	public String getModelId() {
		return modelId;
	}

	public void setModelId(String modelId) {
		this.modelId = modelId;
	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}

	public String getStandardizedId() {
		return standardizedId;
	}

	public void setStandardizedId(String standardizedId) {
		this.standardizedId = standardizedId;
	}

	public String getStandardizedName() {
		return standardizedName;
	}

	public void setStandardizedName(String standardizedName) {
		this.standardizedName = standardizedName;
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
