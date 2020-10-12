package Member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;

public class WriteServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("WriteServiceCon.IN");
		
		// 쿠키값 가져오기
	    Cookie[] cookies = request.getCookies() ;
	    String email = "";
	    if(cookies != null){
	         
	        for(int i=0; i < cookies.length; i++){
	            Cookie c = cookies[i] ;
	             
	            // 저장된 쿠키 이름을 가져온다
	            String cName = c.getName();
	             
	            // 쿠키값을 가져온다
	            String cValue = c.getValue() ;
	            if(cName.equals("email")) {
	            	email = cValue;
	            	break;
	            }
	             
	        }
	    }
	    
	    
	    
	    
	    
			
		return null;
	}

}
