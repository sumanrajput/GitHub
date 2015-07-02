package in.igsa.manage;

import in.igsa.masters.country.CountryVo;
import in.igsa.upload.FileUploadVo;

import java.util.List;

public class MasterServiceImpl implements MasterService {
	private MasterDao dao = null;

	public MasterServiceImpl() {
		this.dao = new MasterDaoImpl();
	}

	/**
	 * Start implement the Country related methods
	 */
	
	public void insertCountry(CountryVo vo)throws Exception {
		dao.insertCountry(vo);
	}
	public int updateCountry(CountryVo vo)throws Exception{
		return dao.updateCountry(vo);
	}
	public int deleteCountryById(String CountryId) throws Exception{
		return dao.deleteCountryById(CountryId);
	}
	
	public List<CountryVo> getCountryList() throws Exception {
		return dao.getCountryList();
	}

	public CountryVo getCountryById(String CountryId) throws Exception {
		return dao.getCountryById(CountryId);
	}
	

	public void insertFileUpload(FileUploadVo vo) {
		dao.insertFileUpload(vo);
	}
	
	
	@Override
	public List<FileUploadVo> getScenarioReport() throws Exception {
		// TODO Auto-generated method stub
		return dao.getScenarioReport();
	}


	@Override
	public int checkModelSceRegion(FileUploadVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkModelSceRegion(vo);
	}

	@Override
	public int deleteModelSceRegion(FileUploadVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteModelSceRegion(vo);
	}


	@Override
	public List<FileUploadVo> getScenarionData(FileUploadVo vo)
			throws Exception {
		return dao.getScenarionData(vo);
	}

	@Override
	public List<FileUploadVo> getScenarionDataValue(FileUploadVo vo)
			throws Exception {
		return dao.getScenarionDataValue(vo);
	}
	

	@Override
	public List<String> getVariableNames() throws Exception {
		// TODO Auto-generated method stub
		return dao.getVariableNames();
	}

	@Override
	public List<String> getModelNames() throws Exception {
		// TODO Auto-generated method stub
		return dao.getModelNames();
	}

	@Override
	public List<String> getRegionNames() throws Exception {
		// TODO Auto-generated method stub
		return dao.getRegionNames();
	}

	@Override
	public List<String> getUnitNames() throws Exception {
		// TODO Auto-generated method stub
		return dao.getUnitNames();
	}

	
	@Override
	public List<String> getAreaName() throws Exception {
		return dao.getAreaName();
	}


}
