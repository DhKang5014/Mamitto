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
import com.DTO.join_babyDTO;
import com.model.master.DTO;

public class JoinBabyServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		// GET email.pw,tel,addr
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String phon_num = request.getParameter("phon_num");
		String birth = request.getParameter("birth");
		String baby_name = request.getParameter("baby_name");
		String baby_gender = request.getParameter("baby_gender");
		
		
		System.out.println(phon_num + " / " + birth + " / " + baby_name + " / " + baby_gender);
		
		join_babyDTO dto = new join_babyDTO(phon_num, baby_name, birth , baby_gender);
		join_babyDAO dao = new join_babyDAO();
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
			
		int cnt = dao.join_baby(dto.getSql_insert_baby_info(), dto.getPhon_num(), dto.getBaby_name(), dto.getBirth(), dto.getBaby_gender(), email);
		if (cnt == 0) {
			moveURL = "fails";
		} else {
			moveURL = "index.jsp";
		}
		return moveURL;
		
	}

}
