package in.igsa.masters.standardized;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class StandardizedDaoImpl implements StandardizedDao {
	private SqlSessionFactory sqlMapper = null;

	public StandardizedDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Standardized related methods
	 */
	public void insertStandardized(StandardizedVo vo) {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertStandardized", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateStandardized(StandardizedVo vo) {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateStandardized", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteStandardizedById(String id) {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteStandardizedById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<StandardizedVo> getStandardizedList() {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getStandardizedList", null);
	}

	public StandardizedVo getStandardizedById(String id) {
		SqlSession session = sqlMapper.openSession();
		return (StandardizedVo) session.selectOne("getStandardizedById", id);
	}
}
