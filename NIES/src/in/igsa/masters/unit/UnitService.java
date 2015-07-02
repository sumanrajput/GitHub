package in.igsa.masters.unit;

import java.util.List;

public interface UnitService {
	// Query for Instructor
	public void insertUnit(UnitVo vo) throws Exception;

	public int updateUnit(UnitVo vo) throws Exception;

	public int deleteUnitById(String id) throws Exception;

	public List<UnitVo> getUnitList() throws Exception;

	public UnitVo getUnitById(String id) throws Exception;

	// Query for Departments
}