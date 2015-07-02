/**
 * Holds declarations of all queries which are used to populate drop down box.
 * refer dropDown.xml
 */
package in.igsa.popup;

import java.io.Serializable;

public class DropDownVo implements Serializable {
	public static final long serialVersionUID = 1L;
	private String lookupId;
	private String lookupName;

	public DropDownVo() {
	}

	public DropDownVo(String lookupName, String lookupId) {
		this.lookupName = lookupName;
		this.lookupId = lookupId;
	}

	public String getLookupId() {
		return lookupId;
	}

	public void setLookupId(String lookupId) {
		this.lookupId = lookupId;
	}

	public String getLookupName() {
		return lookupName;
	}

	public void setLookupName(String lookupName) {
		this.lookupName = lookupName;
	}
}
