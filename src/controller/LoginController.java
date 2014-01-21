package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import msg.MyMessage;

import dto.LoginDTO;

public class LoginController {

	public void loginvarify(HttpServletRequest request,
			HttpServletResponse response, LoginDTO loginDTO) {
		MyMessage myMessage=new MyMessage();
		
		try {
			LoginDTO tloginDTO=new service.LoginService().loginVarify(loginDTO);
			if(tloginDTO==null){
				myMessage.setLoginMessage("Invlid username or password");
				request.setAttribute("LOGINMSG",myMessage);
				request.getRequestDispatcher("login.jsp").forward(request,response);
			}
			else{
				String level=tloginDTO.getUl();
				if (level.equalsIgnoreCase("admin")) {
					response.sendRedirect("adminhome.jsp");
				} else if (level.equalsIgnoreCase("user")) {
					response.sendRedirect("userhome.jsp");
				
			}}
		} catch(Exception ex){
			myMessage.setLoginMessage("Database error");
			try{				
				request.setAttribute("LOGINMSG",myMessage);
				request.getRequestDispatcher("login.jsp").forward(request,response);
			}catch(Exception ex1){}
			ex.printStackTrace();			
		}

	}

	}

