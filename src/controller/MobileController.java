package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.FileItem;


import dao.Impl.MobileDAOImpl;
import dto.MobileDTO;

import service.MobileService;

import msg.MyMessage;

public class MobileController {
	
	public void addMobile(HttpServletRequest request,HttpServletResponse response){
		MyMessage myMessage=new MyMessage();
		MobileService mobileService=new MobileService();
		MobileDTO mobileDTO=new MobileDTO();
		String contentType = request.getContentType();
		if ((contentType.indexOf("multipart/form-data") >= 0)) {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
			List fileItems = upload.parseRequest(request);
			Iterator i = fileItems.iterator();
			while (i.hasNext()) {
					FileItem fi = (FileItem) i.next();
					if (fi.isFormField()) {
						String fieldName = fi.getFieldName();
						String fileName = fi.getString();
						if (fieldName.equals("Os")) {
							mobileDTO.setOs(fileName);
							System.out.println("O S"+fileName);
						}	
						
						if (fieldName.equals("Company_Name")) {
							mobileDTO.setCompany_Name(fileName);
							System.out.println("Company_Name : "+fileName);
						}
						if (fieldName.equals("Model_Number")) {
							mobileDTO.setModel_Number(fileName);
							System.out.println("Model_Number : "+fileName);
						}
						if (fieldName.equals("Price")) {
							mobileDTO.setPrice(fileName);
							System.out.println("Price : "+fileName);
						}
						if (fieldName.equals("Quantity")) {
							mobileDTO.setQuantity(fileName);
							System.out.println("Quantity : "+fileName);
						}
						if (fieldName.equals("Description")) {
							mobileDTO.setDescription(fileName);
							System.out.println("Description : "+mobileDTO.getDescription());
						
						}
					}
					
					 else {
						String path=request.getRealPath("/");
						File filepath=new File(path,"MyImage");
						filepath.mkdirs();
						String fileName = fi.getName();
                        String fname = new File(fileName).getName();
                        String ext = fname.substring(fname.lastIndexOf("."), fname.length());
                        long l=new java.util.Date().getTime();
                        File tfile=new File(filepath,l+ext);
                        fi.write(tfile);
                        System.out.println("File Path..........." + filepath.getAbsolutePath());
                        mobileDTO.setImage_path("MyImage/"+l+ext);
					MobileDAOImpl mobileDAOImpl=new MobileDAOImpl();
						mobileDAOImpl.addMobile(mobileDTO);
					}
				}
			}

			catch (Exception e) {
				e.printStackTrace();

			}
		}
	}
	public List<MobileDTO> getMobile(HttpServletRequest request,HttpServletResponse response){
		List<MobileDTO> mList=new ArrayList<MobileDTO>();
		MobileService mobileService=new  MobileService();
		MobileDTO mobileDTO=new MobileDTO();
		try {
			mList=mobileService.getMoblie();
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		return mList;
	}

	
}
