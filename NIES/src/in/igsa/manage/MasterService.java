package in.igsa.manage;

import in.igsa.masters.country.CountryVo;
import in.igsa.upload.FileUploadVo;

import java.util.List;

public interface MasterService {
	public void insertCountry(CountryVo vo) throws Exception;

	public int updateCountry(CountryVo vo) throws Exception;

	public int deleteCountryById(String countryId) throws Exception;

	public List<CountryVo> getCountryList() throws Exception;

	public CountryVo getCountryById(String instructorId) throws Exception;

	public void insertFileUpload(FileUploadVo vo);
	

	public List<FileUploadVo> getScenarioReport()throws Exception;
	
	public int checkModelSceRegion(FileUploadVo vo) throws Exception;

	public int deleteModelSceRegion(FileUploadVo vo) throws Exception;

	public List<FileUploadVo> getScenarionData(FileUploadVo vo)throws Exception;
	public List<FileUploadVo> getScenarionDataValue(FileUploadVo vo)throws Exception;

	// Query for Departments
	

	public List<String> getVariableNames()throws Exception;
	public List<String> getModelNames()throws Exception;
	public List<String> getRegionNames()throws Exception;
	public List<String> getUnitNames()throws Exception;
	public List<String> getAreaName()throws Exception;
	
}
