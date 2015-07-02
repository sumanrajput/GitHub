package in.igsa.manage;

import in.igsa.masters.country.CountryVo;
import in.igsa.upload.FileUploadVo;

import java.util.ArrayList;
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
	public void insertCountry(CountryVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertCountry", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateCountry(CountryVo vo) throws Exception {
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

	public int deleteCountryById(String CountryId) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.delete("deleteCountryById", CountryId);
	}

	public List<CountryVo> getCountryList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getCountryList", null);
	}

	public CountryVo getCountryById(String CountryId) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (CountryVo) session.selectOne("getCountryById", CountryId);
	}

	@Override
	public void insertFileUpload(FileUploadVo vo) {
		SqlSession session = sqlMapper.openSession();
		boolean flag = true;
		FileUploadVo yearValue;
		String tblid;
		int size;

		try {

			session.insert("insertFileUpload", vo);
			tblid = session.selectOne("getFileUploadId", vo);
			size = vo.getYear().size();
			for (int i = 0; i < size; i++) {
				yearValue = new FileUploadVo();
				yearValue.setTblId(tblid);
				yearValue.setYy(vo.getYear().get(i));
				yearValue.setYyVal(vo.getVal().get(i));
				session.insert("insertFileUploadYearVal", yearValue);
				// System.out.println(" year "+vo.getYear().get(i)+"    value    : "+vo.getVal().get(i));
			}
			session.commit();
		} catch (Exception e) {
			session.rollback();
			flag = false;

			// System.out.println("e.getLocalizedMessage() :   "+e.getLocalizedMessage());
			// System.out.println("e.getMessage()   :    "+e.getMessage());
			// System.out.println("e.hashCode()    :   "+e.hashCode());
			// System.out.println("e.hashCode()   :  "+e.hashCode());
			// System.out.println("e.getClass().getName()   :    "+e.getClass().getName());
			// System.out.println("e.getClass().getSimpleName()    :     "+e.getClass().getSimpleName());
			// System.out.println(" e.getClass().toString()     :       "+e.getClass().toString());

			// e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
			// return flag;
		}

		/**/

		/*
		 * catch (RuntimeSqlException e) { if (e.getCause() == null) { throw e;
		 * // not what you're interested in, throw it back } Exception nested =
		 * (Exception) e.getCause().getCause(); if (nested instanceof
		 * SQLIntegrityConstraintViolationException) {
		 * SQLIntegrityConstraintViolationException constraintViolation =
		 * (SQLIntegrityConstraintViolationException)nested; String message =
		 * constraintViolation.getMessage(); String sqlState =
		 * constraintViolation.getSQLState(); int errorCode =
		 * constraintViolation.getErrorCode();
		 * System.out.println("    Error Messagae  : "
		 * +message+"      SqlState    :    "
		 * +sqlState+"     errorCode    :     "+errorCode); // create validation
		 * message or whatever } else {
		 * 
		 * System.out.println("  else .....  Error Messagae  : "); throw e; //
		 * not what you're interested in, throw it back } }
		 */
	}

	@Override
	public List<FileUploadVo> getScenarioReport() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getScenarioReport", null);
	}

	@Override
	public int checkModelSceRegion(FileUploadVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (int) session.selectOne("checkModelSceRegion", vo);
	}

	@Override
	public int deleteModelSceRegion(FileUploadVo vo) throws Exception {
		SqlSession session = sqlMapper.openSession();
		int checkScenario = -1;
		try {
			checkScenario = (int) session.selectOne("checkModelSceRegion", vo);
			if (checkScenario > 0) {
				session.delete("deleteDataValueScenario", vo);
				session.delete("deleteDataScenario", vo);
				session.commit();
			}
		} catch (Exception e) {
			session.rollback();
		} finally {
			if (session != null)
				session.close();
		}
		return checkScenario;
	}

	@Override
	public List<FileUploadVo> getScenarionData(FileUploadVo vo)
			throws Exception {
		SqlSession session = sqlMapper.openSession();

		return session.selectList("getScenarionData", vo);
	}

	@Override
	public List<FileUploadVo> getScenarionDataValue(FileUploadVo vo)
			throws Exception {
		SqlSession session = sqlMapper.openSession();

		return session.selectList("getScenarionDataValue", vo);
	}

	@Override
	public List<String> getVariableNames() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getVariableNames");
	}

	@Override
	public List<String> getModelNames() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getModelNames");
	}

	@Override
	public List<String> getRegionNames() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getRegionNames");
	}

	@Override
	public List<String> getUnitNames() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getUnitNames");
	}

	@Override
	public List<String> getAreaName() throws Exception {
		SqlSession session = sqlMapper.openSession();
		try {
			return session.selectList("getAreaName");
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static void main(String[] args) throws Exception {
		MasterDao dao = new MasterDaoImpl();

		FileUploadVo fileUploadVo = new FileUploadVo();
		fileUploadVo.setModel("AIM/CGENN");
		fileUploadVo.setRegion("region6");
		fileUploadVo.setScenario("scenario6");
		fileUploadVo.setUnit("unit6");
		fileUploadVo.setVariable("variable6");
		fileUploadVo.setUploadedBy("master6");
		fileUploadVo.setDateTime("2013-12-22 11:12:30");
		List<String> yy = new ArrayList<String>();
		List<String> val = new ArrayList<String>();
		yy.add("2005");
		yy.add("2010");
		yy.add("2015");
		yy.add("2020");

		val.add("20.55");
		val.add("520.77");
		val.add("45.22");
		val.add("88.54");

		fileUploadVo.setYear(yy);
		fileUploadVo.setVal(val);

		// dao.insertFileUpload(fileUploadVo);

		dao.deleteModelSceRegion(fileUploadVo);
	}

}
