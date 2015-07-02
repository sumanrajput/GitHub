package in.igsa.manage.modelregion;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class ModelRegionDaoImpl  implements ModelRegionDao {
	private SqlSessionFactory sqlMapper = null;

	public ModelRegionDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the User related methods
	 */
	public void insertModelRegion(ModelRegionVo vo)  {
		SqlSession session = sqlMapper.openSession();
		try {
			String region_id[]=vo.getRegionId().split(",");
			for(String argus:region_id){
				vo.setRegionId(argus.trim());
				session.insert("insertModelRegion", vo);
			}
			session.commit();
		} finally {
			if (session != null)
				session.rollback();
				session.close();
		}
	}

	public int updateModelRegion(ModelRegionVo vo)  {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			update = session.update("updateModelRegion", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteModelRegionById(String id)  {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteModelRegionById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<ModelRegionVo> getModelRegion()  {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getModelRegion", null);
	}
	
	public ModelRegionVo getModelRegionById(String id)  {
		SqlSession session = sqlMapper.openSession();
		return (ModelRegionVo) session.selectOne("getModelRegionById", id);
	}
}
