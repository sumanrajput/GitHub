package in.igsa.masters.area;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class AreaDaoImpl implements AreaDao {
	private SqlSessionFactory sqlMapper = null;

	public AreaDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Area related methods
	 */
	public void insertArea(AreaVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertArea", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateArea(AreaVo vo) throws Exception {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateArea", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteAreaById(String id) throws Exception {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteAreaById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<AreaVo> getAreaList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getAreaList", null);
	}

	public AreaVo getAreaById(String id) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (AreaVo) session.selectOne("getAreaById", id);
	}
}
