package in.igsa.login;

import java.util.List;


public interface LoginService {
	public List<LoginVo> getLogin(String loginID);
	public String getPasswordById(String loginId);
	public int changePassword(LoginVo vo) ;
	public String getUserId(String loginId);
	public LoginVo getEmailId(String loginId);

	/*public void insertLoginLog(SessionVo vo) throws Exception;

	public void updateLoginLog(SessionVo vo) throws Exception;*/
}
