package Member;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.DAO.joinDAO;
import com.model.master.DTO;

public class JoinServiceCon implements Command {

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
		// GET email.pw,tel,addr
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String tel = request.getParameter("tel");
		System.out.println(email + " / " + pw + " / " + name + " / " + age + " / " + tel );
		
		DTO dto = new DTO(email, pw, name, age, tel);
		joinDAO dao = new joinDAO();
		int cnt = dao.join(dto.getSql_join(), dto.getEmail(), dto.getPw(), dto.getName(), dto.getAge(), dto.getTel());
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "login_page.jsp";
		}
		return moveURL;
	}
	
}
