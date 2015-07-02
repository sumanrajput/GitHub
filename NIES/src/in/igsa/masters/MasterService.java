package in.igsa.masters;

import in.igsa.masters.country.CountryVo;
import in.igsa.masters.region.RegionVo;

import java.util.List;

public interface MasterService {
	public void insertCountry(CountryVo vo);

	public int updateCountry(CountryVo vo);

	public int deleteCountryById(String countryId);

	public List<CountryVo> getCountryList();

	public CountryVo getCountryById(String countryId);

	public  List<RegionVo> getRegionList() throws Exception;

	public RegionVo getRegionById(String regionId) throws Exception;
}
