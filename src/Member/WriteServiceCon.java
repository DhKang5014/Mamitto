package Member;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.insert_commuDAO;
import com.DAO.join_babyDAO;
import com.DTO.babyDTO;
import com.DTO.commuDTO;
import com.front.Command;

public class WriteServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("WriteServiceCon.IN");
		String moveURL = null;
		// GET email.pw,tel,addr
		try {
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String password = request.getParameter("password");
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
	    
		System.out.println(title + " / " + content + " / " + password);
		
		commuDTO dto = new commuDTO(title, content , password);
		insert_commuDAO dao = new insert_commuDAO();
	    
		int cnt = dao.insert(dto.getSql_commu_baby_info(), dto.getTitle(), dto.getContent(), dto.getPo_pw(), email);
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "commu.jsp";
		}
		return moveURL;
	}

}
