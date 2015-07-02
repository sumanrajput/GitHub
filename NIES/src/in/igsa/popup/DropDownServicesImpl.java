package in.igsa.popup;

import java.util.List;


public class DropDownServicesImpl implements DropDownServices {
	private DropDownDao dao = null;

	public DropDownServicesImpl() {
		this.dao = new DropDownSqlMapDao();
	}
	public List<DropDownVo> populateCombo(String listType){
		return dao.populateCombo(listType);
	}

	public List<DropDownVo> populateCombo(String listType, String value){
		return dao.populateCombo(listType, value);
	}

	public List<DropDownVo> populateComboAll(String listType, String value){
		return dao.populateComboAll(listType, value);
	}
}
