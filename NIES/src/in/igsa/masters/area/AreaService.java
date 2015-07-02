package in.igsa.masters.area;

import java.util.List;

public interface AreaService {
	// Query for Instructor
	public void insertArea(AreaVo vo) throws Exception;

	public int updateArea(AreaVo vo) throws Exception;

	public int deleteAreaById(String id) throws Exception;

	public List<AreaVo> getAreaList() throws Exception;

	public AreaVo getAreaById(String id) throws Exception;

	// Query for Departments
}