package in.igsa.masters;

import in.igsa.masters.country.CountryVo;
import in.igsa.masters.region.RegionVo;

import java.util.List;

public class MasterServiceImpl implements MasterService {
	private MasterDao dao = null;

	public MasterServiceImpl() {
		this.dao = new MasterDaoImpl();
	}

	/**
	 * Start implement the Country related methods
	 */
	
	@Override
	public void insertCountry(CountryVo vo) {
		dao.insertCountry(vo);
	}

	@Override
	public int updateCountry(CountryVo vo) {
		return dao.updateCountry(vo);
	}

	@Override
	public int deleteCountryById(String countryId) {
		return dao.deleteCountryById(countryId);
	}

	@Override
	public List<CountryVo> getCountryList() {
		return dao.getCountryList();
	}

	@Override
	public CountryVo getCountryById(String countryId) {
		return dao.getCountryById(countryId);
	}
	

	@Override
	public List<RegionVo> getRegionList() throws Exception {
		return dao.getRegionList();
	}
	
	@Override
	public RegionVo getRegionById(String regionId) throws Exception {
		return dao.getRegionById(regionId);
	}
	
	public static void main(String[] args){
		MasterService service = new MasterServiceImpl();
		/*List<AreaVo> list;
		try {
			list = service.getAreaList();
			System.out.println("AreaS name" +list.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		/*List<CountryVo> list = service.getCountryList();
		System.out.println("Country name" +list.size());
		*/
		
		/*
		for(InstitutionVo vo : list){
			System.out.println("Country name" +vo.getInstitutionName());
		}*/
	}

	
}
