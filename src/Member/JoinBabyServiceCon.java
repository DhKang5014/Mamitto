package Member;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.DAO.join_babyDAO;
//import com.model.function.dao.MessageFunctionDAO;
import com.DAO.loginDAO;
import com.DTO.babyDTO;
import com.model.master.DTO;

public class JoinBabyServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		// GET email.pw,tel,addr
		try {
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String birth = request.getParameter("baby_age");
		String baby_name = request.getParameter("baby_name");
		String baby_gender = request.getParameter("baby_gender");
		
		
		System.out.println(birth + " / " + baby_name + " / " + baby_gender);
		
		babyDTO dto = new babyDTO(baby_name, birth , baby_gender);
		join_babyDAO dao = new join_babyDAO();
	    Cookie[] cookies = request.getCookies() ;
	    String email = "";
	    if(cookies != null){
	         
	        for(int i=0; i < cookies.length; i++){
	            Cookie c = cookies[i] ;
	             
	            String cName = c.getName();
	             
	            String cValue = c.getValue() ;
	            if(cName.equals("email")) {
	            	email = cValue;
	            	break;
	            }
	             
	        }
	    }
			
		int cnt = dao.join_baby(dto.getSql_insert_baby_info(), dto.getBaby_name(), dto.getBirth(), dto.getBaby_gender(), email);
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "BodyCheckServiceCon.do?height=0&weight=0";
		}
		return moveURL;
		
	}

}
