package Member;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.commuDAO;
import com.DAO.join_babyDAO;
import com.DTO.commuDTO;
import com.DTO.babyDTO;
import com.front.Command;

public class CommuServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String moveURL = null;
		// GET email, title, content, password
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String po_pw = request.getParameter("password");
		
		
		System.out.println(title + " / " + content + " / " + po_pw);
		
		commuDTO dto = new commuDTO(title, content , po_pw);
		commuDAO dao = new commuDAO();
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
			
		int cnt = dao.insert_commu(dto.getSql_commu_baby_info(), dto.getTitle(), dto.getContent(), dto.getPo_pw(), email);
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "commu.jsp";
		}
		return moveURL;
	}

}
