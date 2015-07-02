package in.igsa.manage.nativeregion;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class NativeRegionDaoImpl  implements NativeRegionDao {
	private SqlSessionFactory sqlMapper = null;

	public NativeRegionDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the User related methods
	 */
	public void insertModelNativeStanderdizeRegion(NativeRegionVo vo)  {
		SqlSession session = sqlMapper.openSession();
		try {
			String region_id[]=vo.getRegionId().split(",");
			for(String argus:region_id){
				vo.setRegionId(argus.trim());
				session.insert("insertModelNativeStanderdizeRegion", vo);
			}
			session.commit();
		} finally {
			if (session != null)
				session.rollback();
				session.close();
		}
	}

	public int updateModelNativeStanderdizeRegion(NativeRegionVo vo)  {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			update = session.update("updateModelNativeStanderdizeRegion", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteModelNativeStanderdizeRegionById(String id)  {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteModelNativeStanderdizeRegionById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<NativeRegionVo> getModelNativeStanderdizeRegion()  {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getModelNativeStanderdizeRegion", null);
	}
	
	public NativeRegionVo getModelNativeStanderdizeRegionById(String id)  {
		SqlSession session = sqlMapper.openSession();
		return (NativeRegionVo) session.selectOne("getModelNativeStanderdizeRegionById", id);
	}
}
