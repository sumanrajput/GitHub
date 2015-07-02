package in.igsa.masters;

import in.igsa.masters.country.CountryVo;
import in.igsa.masters.region.RegionVo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class MasterDaoImpl implements MasterDao {
	private SqlSessionFactory sqlMapper = null;

	public MasterDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Country related methods
	 */
	public void insertCountry(CountryVo vo){
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertCountry", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateCountry(CountryVo vo){
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateCountry", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteCountryById(String id){
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteCountryById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<CountryVo> getCountryList() {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getCountryList", null);
	}

	public CountryVo getCountryById(String CountryId) {
		SqlSession session = sqlMapper.openSession();
		return (CountryVo) session.selectOne("getCountryById", CountryId);
	}

	@Override
	public List<RegionVo> getRegionList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getRegionList", null);
	}

	@Override
	public RegionVo getRegionById(String regionId) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (RegionVo) session.selectList("getRegionById", regionId);
	}
}
