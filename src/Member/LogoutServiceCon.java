package Member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;

public class LogoutServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		
		System.out.println("쿠키값 삭제 시도");
		
		Cookie cookie = new Cookie("email", null);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		Cookie[] cookies = request.getCookies();
		
		String email = null;
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
	    
	    if (email != null) {
	    	System.out.println("쿠키 삭제 실패");
	    } else {
	    	System.out.println("쿠키 삭제 성공");
	    }
		moveURL = "index.jsp";
		return moveURL;
	}

}
