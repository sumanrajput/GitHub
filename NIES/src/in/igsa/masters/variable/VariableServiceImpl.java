package in.igsa.masters.variable;

import java.util.List;

public class VariableServiceImpl implements VariableService {
	private VariableDao dao = null;

	public VariableServiceImpl() {
		this.dao = new VariableDaoImpl();
	}

	/**
	 * Start implement the Variable related methods
	 */

	public String insertVariable(VariableVo vo) throws Exception {
		return dao.insertVariable(vo);
	}

	public int updateVariable(VariableVo vo) throws Exception {
		return dao.updateVariable(vo);
	}

	public int deleteVariableById(String id) throws Exception {
		return dao.deleteVariableById(id);
	}

	public List<VariableVo> getVariableList() throws Exception {
		return dao.getVariableList();
	}

	public VariableVo getVariableById(String variableId) throws Exception {
		return dao.getVariableById(variableId);
	}

}
