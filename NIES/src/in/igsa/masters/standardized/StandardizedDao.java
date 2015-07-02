package in.igsa.masters.standardized;

import java.util.List;

public interface StandardizedDao {
	// Query for Instructor
	public void insertStandardized(StandardizedVo vo);

	public int updateStandardized(StandardizedVo vo);

	public int deleteStandardizedById(String id);

	public List<StandardizedVo> getStandardizedList();

	public StandardizedVo getStandardizedById(String id);

	// Query for Departments
}
