package in.igsa.masters.region;

import java.util.List;

public class RegionServiceImpl implements RegionService {
	private RegionDao dao = null;

	public RegionServiceImpl() {
		this.dao = new RegionDaoImpl();
	}

	/**
	 * Start implement the Region related methods
	 */

	public void insertRegion(RegionVo vo) throws Exception {
		dao.insertRegion(vo);
	}

	public int updateRegion(RegionVo vo) throws Exception {
		return dao.updateRegion(vo);
	}

	public int deleteRegionById(String id) throws Exception {
		return dao.deleteRegionById(id);
	}

	public List<RegionVo> getRegionList() throws Exception {
		return dao.getRegionList();
	}

	public RegionVo getRegionById(String regionId) throws Exception {
		return dao.getRegionById(regionId);
	}

	public static void main(String[] args) throws Exception {
		RegionService service = new RegionServiceImpl();
		List<RegionVo> list = service.getRegionList();

		for (RegionVo vo : list) {
			System.out.println("Region name" + vo.getRegionName());
		}
	}
}
