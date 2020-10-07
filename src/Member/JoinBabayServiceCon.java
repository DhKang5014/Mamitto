package Member;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.DAO.join_babyDAO;
//import com.model.function.dao.MessageFunctionDAO;
import com.DAO.loginDAO;
import com.DTO.join_babyDTO;
import com.model.master.DTO;

public class JoinBabayServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		// GET email.pw,tel,addr
		String phon_num = request.getParameter("phon_num");
		String birth = request.getParameter("birth");
		String baby_name = request.getParameter("baby_name");
		int baby_age = Integer.parseInt(request.getParameter("baby_age"));
		String baby_gender = request.getParameter("baby_gender");
		
		
		System.out.println(phon_num + " / " + birth + " / " + baby_name + " / " + baby_age + " / " + baby_gender);
	
		join_babyDTO dto = new join_babyDTO(phon_num, birth, baby_name, baby_age, baby_gender);
		join_babyDAO dao = new join_babyDAO();
		int cnt = dao.join(dto.getSql_join(), dto.getPhon_num(), dto.getBirth(), dto.getBaby_name(), dto.getBaby_age(),dto.getBaby_gender());
		if (cnt == 0) {
			moveURL = "fail";
		} else {
			moveURL = "index.jsp";
		}
		return moveURL;
		
	}

}
