package app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckUser
 */
@WebServlet("/checkuser")
public class CheckUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getParameter("logout")!=null) {
			HttpSession sessio=request.getSession(true);
			sessio.invalidate();
			sessio=null;
		}
		response.sendRedirect("/jsp/login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		
		//Checking the user and pass (should be checked from the database)
		if (user.compareTo("root")==0 && pass.compareTo("Dvt16042002")==0) {
			HttpSession sessio=request.getSession(true);
			sessio.setAttribute("AuthOk", "ok");
			response.sendRedirect("/adminIndex");
		}
		else if (user.compareTo("Auno")==0 && pass.compareTo("c123")==0){
			HttpSession sessio=request.getSession(true);
			sessio.setAttribute("Candi", "ok");
			response.sendRedirect("/canIndex");
		}
		else if (user.compareTo("Banjamin")==0 && pass.compareTo("c123")==0){
			HttpSession sessio=request.getSession(true);
			sessio.setAttribute("Candi", "ok");
			response.sendRedirect("/canIndex");
		}
		else if (user.compareTo("Henrikki")==0 && pass.compareTo("c123")==0){
			HttpSession sessio=request.getSession(true);
			sessio.setAttribute("Candi", "ok");
			response.sendRedirect("/canIndex");
		}
		else if (user.compareTo("Jyri")==0 && pass.compareTo("c123")==0){
			HttpSession sessio=request.getSession(true);
			sessio.setAttribute("Candi", "ok");
			response.sendRedirect("/canIndex");
		}
		else if (user.compareTo("Isko")==0 && pass.compareTo("c123")==0){
			HttpSession sessio=request.getSession(true);
			sessio.setAttribute("Candi", "ok");
			response.sendRedirect("/canIndex");
		}
		else {
			response.sendRedirect("/jsp/login.jsp");//Or perhaps to register page
		}
	}

}
