package in.igsa.masters.role;

import java.util.List;

public class RoleServiceImpl implements RoleService {
	private RoleDao dao = null;

	public RoleServiceImpl() {
		this.dao = new RoleDaoImpl();
	}

	/**
	 * Start implement the Role related methods
	 */

	public void insertRole(RoleVo vo) throws Exception {
		dao.insertRole(vo);
	}

	public int updateRole(RoleVo vo) throws Exception {
		return dao.updateRole(vo);
	}

	public int deleteRoleById(String id) throws Exception {
		return dao.deleteRoleById(id);
	}

	public List<RoleVo> getRoleList() throws Exception {
		return dao.getRoleList();
	}

	public RoleVo getRoleById(String roleId) throws Exception {
		return dao.getRoleById(roleId);
	}

	public static void main(String[] args) throws Exception {
		RoleService service = new RoleServiceImpl();
		List<RoleVo> list = service.getRoleList();

		for (RoleVo vo : list) {
			System.out.println("Role name" + vo.getRoleName());
		}
	}
}
