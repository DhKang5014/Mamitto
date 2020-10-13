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
		System.out.println("IN JoinCameraServiceCon");
		// GET email.pw,tel,addr
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String ip = request.getParameter("ip_num");
		
		
		
		System.out.println("ip >> "+ ip);
		
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
	    cameraDTO dto = new cameraDTO(ip, email);
		join_cameraDAO dao = new join_cameraDAO();
		
		int cnt = dao.join_camera(dto.getSql_insert_camera_info(), dto.getIp(), dto.getEmail());
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "index.jsp";
		}
		return moveURL;
		
	}

}
