package Member;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.DAO.joinDAO;
import com.model.master.DTO;

public class JoinServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		// GET email.pw,tel,addr
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel = tel1 + tel2 + tel3;
		System.out.println(email + " / " + pw + " / " + name + " / " + age + " / " + tel );
		
		DTO dto = new DTO(email, pw, name, age, tel);
		joinDAO dao = new joinDAO();
		int cnt = dao.join(dto.getSql_join(), dto.getEmail(), dto.getPw(), dto.getName(), dto.getAge(), dto.getTel());
		if (cnt == 0) {
			moveURL = "fail.jsp";
		} else {
			moveURL = "index.jsp";
		}
		return moveURL;
	}
	
}
