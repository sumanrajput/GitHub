package in.igsa.popup;

import java.util.List;

public interface DropDownServices {
	public List<DropDownVo> populateCombo(String listType);

	public List<DropDownVo> populateCombo(String listType, String value);

	public List<DropDownVo> populateComboAll(String listType, String value);
}
