package dao.Impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import dao.LoginDAO;
import dto.LoginDTO;

public class LoginDAOImpl implements LoginDAO {

	@Override
	public LoginDTO loginVarify(LoginDTO loginDTO) throws Exception {
		LoginDTO tLoginDTO=null;
		Connection con=null;
		try{
			con=new db.MyConnection().getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from tbl_login where unm='"+loginDTO.getUnm()+"' and up='"+loginDTO.getUp()+"'");
			if(rs.next()){
				loginDTO.setUl(rs.getString("ul"));
				tLoginDTO=loginDTO;
			}
			rs.close();
			st.close();
		}finally{
			con.close();
		}
		return tLoginDTO;
	}
	

}
