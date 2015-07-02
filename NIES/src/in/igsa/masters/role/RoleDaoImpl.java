package in.igsa.masters.role;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class RoleDaoImpl implements RoleDao {
	private SqlSessionFactory sqlMapper = null;

	public RoleDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Role related methods
	 */
	public void insertRole(RoleVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertRole", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateRole(RoleVo vo) throws Exception {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateRole", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteRoleById(String id) throws Exception {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteRoleById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<RoleVo> getRoleList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getRoleList", null);
	}

	public RoleVo getRoleById(String id) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (RoleVo) session.selectOne("getRoleById", id);
	}
}
