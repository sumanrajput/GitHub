package in.igsa.common;

import java.io.Serializable;

public class CommonVo implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String createdBy;
	private String updatedBy;
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
}
