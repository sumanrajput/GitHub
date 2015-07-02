package in.igsa.manage.nativeregion;

import java.util.List;

public interface NativeRegionDao {
	// Query for Instructor
	public void insertModelNativeStanderdizeRegion(NativeRegionVo vo);

	public int updateModelNativeStanderdizeRegion(NativeRegionVo vo);

	public int deleteModelNativeStanderdizeRegionById(String id);

	public List<NativeRegionVo> getModelNativeStanderdizeRegion();

	public NativeRegionVo getModelNativeStanderdizeRegionById(String id);
	// Query for Departments
}
