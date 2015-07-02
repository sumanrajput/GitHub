package in.igsa.masters.region;

import java.util.List;

public interface RegionDao {
	// Query for Instructor
	public void insertRegion(RegionVo vo) throws Exception;

	public int updateRegion(RegionVo vo) throws Exception;

	public int deleteRegionById(String id) throws Exception;

	public List<RegionVo> getRegionList() throws Exception;

	public RegionVo getRegionById(String id) throws Exception;

	// Query for Departments
}
