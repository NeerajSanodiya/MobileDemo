package service;

import dao.Impl.LoginDAOImpl;
import dto.LoginDTO;

public class LoginService {
	public LoginDTO loginVarify(LoginDTO loginDTO) throws Exception {
		return new LoginDAOImpl().loginVarify(loginDTO);
		
	}
}
