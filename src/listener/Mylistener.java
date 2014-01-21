package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Mylistener implements ServletContextListener {
public Mylistener() {

    }


    public void contextInitialized(ServletContextEvent arg0) {
    	try{
    	
    		Class.forName("com.mysql.jdbc.Driver");    		
    	}catch(Exception ex){
    		ex.printStackTrace();
    	}
    }


    public void contextDestroyed(ServletContextEvent arg0) {
   
    }
	
}
