package Member;

import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.DAO.insert_bodyDAO;
import com.DAO.joinDAO;
import com.DTO.bodycheckDTO;
import com.model.master.DTO;

public class BodyCheckServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String moveURL = null;
		System.out.println("IN BodyCheckServiceCon");
		// GET email.pw,tel,addr
	    String email = "";
	    Cookie[] cookies = request.getCookies() ;
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
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		System.out.println(email + " / " + height + " / " + weight);
		
		bodycheckDTO dto = new bodycheckDTO(email, height, weight);
		insert_bodyDAO dao = new insert_bodyDAO();
		int cnt = dao.insert(dto.getSql_insert_bodycheck(), dto.getEmail(), dto.getHeight(), dto.getWeight());
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "my_page.jsp";
		}
		return moveURL;
	}
	
}
