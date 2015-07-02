package in.igsa.masters.region;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class RegionDaoImpl implements RegionDao {
	private SqlSessionFactory sqlMapper = null;

	public RegionDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Region related methods
	 */
	public void insertRegion(RegionVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertRegion", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateRegion(RegionVo vo) throws Exception {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateRegion", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteRegionById(String id) throws Exception {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteRegionById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<RegionVo> getRegionList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getRegionList", null);
	}

	public RegionVo getRegionById(String id) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (RegionVo) session.selectOne("getRegionById", id);
	}
}
