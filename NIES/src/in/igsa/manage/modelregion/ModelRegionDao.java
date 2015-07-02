package in.igsa.manage.modelregion;

import java.util.List;

public interface ModelRegionDao {
	// Query for Instructor
	public void insertModelRegion(ModelRegionVo vo);

	public int updateModelRegion(ModelRegionVo vo);

	public int deleteModelRegionById(String id);

	public List<ModelRegionVo> getModelRegion();

	public ModelRegionVo getModelRegionById(String id);
	// Query for Departments
}
