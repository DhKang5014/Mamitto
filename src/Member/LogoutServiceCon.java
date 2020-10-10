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
		Cookie coo = new Cookie("cam_ip", null);
		cookie.setMaxAge(0);
		coo.setMaxAge(0);
		response.addCookie(cookie);
		response.addCookie(coo);
		Cookie[] cookies = request.getCookies();
		
		moveURL = "index.jsp";
		return moveURL;
	}

}
