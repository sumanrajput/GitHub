package in.igsa.login;

import java.util.List;


public class LoginServiceImpl implements LoginService {
	private LoginDao loginDao = null;
	public LoginServiceImpl() {
		this.loginDao = new LoginDaoImpl();
	}

	@Override
	public List<LoginVo> getLogin(String loginId){
		return loginDao.getLogin(loginId);
	}

	@Override
	public String getPasswordById(String loginId) {
		return loginDao.getPasswordById(loginId);
	}
	
	
	@Override
	public int changePassword(LoginVo vo) {
		return loginDao.changePassword(vo);
	}
	
	@Override
	public String getUserId(String loginId) {
		return loginDao.getUserId(loginId);
	}
	
	@Override
	public LoginVo getEmailId(String loginId) {
		return loginDao.getEmailId(loginId);
	}
	
	
	
	public static void main(String args[]) throws Exception{
		LoginService service = new LoginServiceImpl();
		LoginVo list = service.getEmailId("masui");
				System.out.println(list.getPassword());
	}
}

	


