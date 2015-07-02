package in.igsa.masters.role;

import java.util.List;

public interface RoleService {
	// Query for Instructor
	public void insertRole(RoleVo vo) throws Exception;

	public int updateRole(RoleVo vo) throws Exception;

	public int deleteRoleById(String id) throws Exception;

	public List<RoleVo> getRoleList() throws Exception;

	public RoleVo getRoleById(String id) throws Exception;

	// Query for Departments
}