package in.igsa.masters.user;

import java.util.List;

public class UserServiceImpl implements UserService {
	private UserDao dao = null;

	public UserServiceImpl() {
		this.dao = new UserDaoImpl();
	}

	/**
	 * Start implement the User related methods
	 */

	public void insertUser(UserVo vo)  {
		dao.insertUser(vo);
	}

	public int updateUser(UserVo vo)  {
		return dao.updateUser(vo);
	}

	public int deleteUserById(String id)  {
		return dao.deleteUserById(id);
	}

	public List<UserVo> getUserAllList()  {
		return dao.getUserAllList();
	}
	
	public UserVo getUserById(String userId)  {
		return dao.getUserById(userId);
	}
	
	@Override
	public UserVo userProfile(String userId) {
		return dao.userProfile(userId);
	}
	

	@Override
	public int updateProfile(UserVo vo) {
		return dao.updateProfile(vo);
	}	

	public static void main(String[] args)  {
		UserService service = new UserServiceImpl();
		List<UserVo> list = service.getUserAllList();

		for (UserVo vo : list) {
			System.out.println("User name" + vo.getUserName());
		}
	}

}
