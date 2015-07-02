package in.igsa.masters.user;

import java.util.List;

public interface UserService {
	// Query for Instructor
	public void insertUser(UserVo vo);

	public int updateUser(UserVo vo);

	public int deleteUserById(String id);

	public List<UserVo> getUserAllList();

	public UserVo getUserById(String id);
	
	public UserVo userProfile(String userId);
	
	public int updateProfile(UserVo vo);
	
	// Query for Departments
}