package in.igsa.login;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class LoginDaoImpl implements LoginDao {

	private SqlSessionFactory sqlMapper = null;

	public LoginDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	@Override
	public List<LoginVo> getLogin(String loginId){
		SqlSession session = sqlMapper.openSession();
		List<LoginVo> loginList= new ArrayList<LoginVo>();
		try {
			loginList = session.selectList("getLogin",loginId);
		} finally {
			if (session != null)
				session.close();
		}
		return loginList;
	}
	
	public String getPasswordById(String loginId){
		SqlSession session = sqlMapper.openSession();
		String pass = null;
		try {
			pass = session.selectOne("getPasswordById",loginId);
		} finally {
			if (session != null)
				session.close();
		}
		return pass;
	}
	
	public int changePassword(LoginVo vo){
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			update = session.update("changePassword", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}
	
	
	public String getUserId(String userId){
		SqlSession session = sqlMapper.openSession();
		String pass = null;
		try {
			pass = session.selectOne("getUserId",userId);
		} finally {
			if (session != null)
				session.close();
		}
		return pass;
	}
	
	public LoginVo getEmailId(String loginId){
		SqlSession session = sqlMapper.openSession();
	
	LoginVo useremail= new LoginVo();
	try {
		useremail = session.selectOne("getLogin",loginId);
	} finally {
		if (session != null)
			session.close();
	}
	return useremail;
	
	}
	public static void main(String[] args) throws Exception {
		LoginDao dao = new LoginDaoImpl();
		
		System.out.println(dao.getUserId("masui"));
	}
}
