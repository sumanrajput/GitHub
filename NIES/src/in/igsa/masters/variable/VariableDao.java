package in.igsa.masters.variable;

import java.util.List;

public interface VariableDao {
	// Query for Instructor
	public String insertVariable(VariableVo vo);

	public int updateVariable(VariableVo vo) throws Exception;

	public int deleteVariableById(String id) throws Exception;

	public List<VariableVo> getVariableList() throws Exception;

	public VariableVo getVariableById(String id) throws Exception;

	// Query for Departments
}
