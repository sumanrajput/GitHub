package in.igsa.masters.user;

import in.igsa.login.LoginVo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import utils.RandomString;
import config.DaoConfig;

public class UserDaoImpl  implements UserDao {
	private SqlSessionFactory sqlMapper = null;

	public UserDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the User related methods
	 */
	public void insertUser(UserVo vo)  {
		LoginVo lvo = new LoginVo();
		String pass = new RandomString(5).nextString();
		lvo.setPassword(pass);
		lvo.setConfirmPassword(pass);
		lvo.setUserId(vo.getUserId());
		lvo.setRoleId(vo.getRoleId());
		lvo.setCreatedBy(vo.getUserId());
		SqlSession session = sqlMapper.openSession();
		try {
			session.insert("insertUser", vo);
			session.insert("insertLogin", lvo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updateUser(UserVo vo)  {
		int update = 0;
		LoginVo lvo = new LoginVo();
		lvo.setRoleId(vo.getRoleId());
		lvo.setUserId(vo.getUserId());
		lvo.setUpdatedBy(vo.getUserId());
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateUser", vo);
			session.update("updateLogin", lvo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteUserById(String id)  {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deleteUserById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<UserVo> getUserAllList()  {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getUserAllList", null);
	}
	
	public UserVo getUserById(String id)  {
		SqlSession session = sqlMapper.openSession();
		return (UserVo) session.selectOne("getUserById", id);
	}
	
	public UserVo userProfile(String userId){
		SqlSession session = sqlMapper.openSession();
		return (UserVo) session.selectOne("userProfile", userId);
	}

	@Override
	public int updateProfile(UserVo vo) {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateProfile", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}
}
