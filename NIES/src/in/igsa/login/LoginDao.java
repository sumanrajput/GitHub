package in.igsa.login;

import java.util.List;


public interface LoginDao {
	public List<LoginVo> getLogin(String loginId);
	public String getPasswordById(String loginId);
	public int changePassword(LoginVo vo) ;
	public String getUserId(String loginId);
	public LoginVo getEmailId(String loginId);
}
