package Member;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.join_cameraDAO;
import com.DTO.cameraDTO;
import com.front.Command;

public class JoinCameraServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		System.out.println("IN JoinCameraServiceCon.dot");
		// GET email.pw,tel,addr
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String ip = request.getParameter("ip_num");
		String email = request.getParameter("email");
		
		
		System.out.println("ip >> "+ ip);
		
	    String sql = "update babys set cam_ip = ? where email = ? ";
	    
		join_cameraDAO dao = new join_cameraDAO();
		
		int cnt = dao.join_camera(sql, ip, email);
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "index.jsp";
		}
		return moveURL;
		
	}

}
