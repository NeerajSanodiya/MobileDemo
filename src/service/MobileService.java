package service;


import java.util.List;

import dao.Impl.MobileDAOImpl;
import dto.MobileDTO;

public class MobileService {
	public MobileDTO addMobile(MobileDTO mobileDTO) throws Exception{
		return new MobileDAOImpl().addMobile(mobileDTO);
	}
	public List<MobileDTO> getMoblie() throws Exception {
		return new MobileDAOImpl().getMoblie();
	}

}
