package in.igsa.masters.country;

import in.igsa.common.CommonVo;

import java.io.Serializable;

public class CountryVo extends CommonVo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String tblId;
	private String countryId;
	private String countryName;
	private String link;
	private String status;
	private String tableIndex;

	
	public CountryVo(){
		
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

	public String getTblId() {
		return tblId;
	}

	public void setTblId(String tblId) {
		this.tblId = tblId;
	}

	public String getTableIndex() {
		return tableIndex;
	}

	public void setTableIndex(String tableIndex) {
		this.tableIndex = tableIndex;
	}
}
