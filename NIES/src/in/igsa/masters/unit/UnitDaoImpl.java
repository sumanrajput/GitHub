package in.igsa.masters.unit;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class UnitDaoImpl implements UnitDao {
	private SqlSessionFactory sqlMapper = null;

	public UnitDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Unit related methods
	 */
	public void insertUnit(UnitVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertUnit", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateUnit(UnitVo vo) throws Exception {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateUnit", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteUnitById(String id) throws Exception {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteUnitById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<UnitVo> getUnitList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getUnitList", null);
	}

	public UnitVo getUnitById(String id) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (UnitVo) session.selectOne("getUnitById", id);
	}
}
