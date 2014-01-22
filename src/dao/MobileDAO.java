package dao;

import java.util.List;

import dto.MobileDTO;

public interface MobileDAO {
	public MobileDTO addMobile(MobileDTO mobileDTO) throws Exception;
	public List<MobileDTO> getMoblie() throws Exception;
}
