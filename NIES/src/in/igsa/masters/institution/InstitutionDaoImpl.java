package in.igsa.masters.institution;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class InstitutionDaoImpl implements InstitutionDao {
	private SqlSessionFactory sqlMapper = null;

	public InstitutionDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Institution related methods
	 */
	public void insertInstitution(InstitutionVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertInstitution", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateInstitution(InstitutionVo vo) throws Exception {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateInstitution", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteInstitutionById(String id) throws Exception {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteInstitutionById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<InstitutionVo> getInstitutionList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getInstitutionList", null);
	}

	public InstitutionVo getInstitutionById(String id) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (InstitutionVo) session.selectOne("getInstitutionById", id);
	}
}
