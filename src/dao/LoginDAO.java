package dao;

import dto.LoginDTO;

public interface LoginDAO {
	public LoginDTO loginVarify(LoginDTO loginDTO) throws Exception;
	
}
