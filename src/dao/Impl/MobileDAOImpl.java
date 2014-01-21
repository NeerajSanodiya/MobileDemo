package dao.Impl;

import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.MobileDAO;
import dto.MobileDTO;

public class MobileDAOImpl implements MobileDAO{

	@Override
	public MobileDTO addMobile(MobileDTO mobileDTO) throws Exception{
		
		Connection con=null;
		try {
			con= new db.MyConnection().getConnection();
			Statement statement=con.createStatement();
			String sql="insert into tbl_product(Os,Company_Name,Model_Number,Price,Quantity,Description,Image_path) values('"+mobileDTO.getOs()+"','"+mobileDTO.getCompany_Name()+"','"+mobileDTO.getModel_Number()+"','"+mobileDTO.getPrice()+"','"+mobileDTO.getQuantity()+"','"+mobileDTO.getDescription()+"','"+mobileDTO.getImage_path()+"')";
			System.out.println(sql);
			statement.executeUpdate(sql);
			statement.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			con.close();
		}
		return mobileDTO;
	}

	@Override
	public List<MobileDTO> getMoblie() throws Exception {
		List <MobileDTO>mobileList=new ArrayList<MobileDTO>();
		Connection con=null;
		try {
			con=new db.MyConnection().getConnection();
			Statement statement=con.createStatement();
			String sql="select * from tbl_product";
			ResultSet resultSet=statement.executeQuery(sql);
			while(resultSet.next()){
				MobileDTO mobileDTO=new MobileDTO();
				mobileDTO.setOs(resultSet.getString("Os")) ;
				mobileDTO.setCompany_Name(resultSet.getString("Company_Name"));
				mobileDTO.setModel_Number(resultSet.getString("Model_Number"));
				mobileDTO.setPrice(resultSet.getString("Price"));
				mobileDTO.setQuantity(resultSet.getString("Quantity"));
				mobileDTO.setDescription(resultSet.getString("Description"));
				mobileDTO.setImage_path(resultSet.getString("Image_path"));
				mobileList.add(mobileDTO);
				System.out.println(mobileDTO.getCompany_Name());
			}
			resultSet.close();
			statement.close();
		}finally{
			con.close();
		}
		return mobileList;
	}

}





