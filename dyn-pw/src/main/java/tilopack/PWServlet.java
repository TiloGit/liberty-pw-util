package tilopack;


import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.websphere.crypto.PasswordUtil;

/**
 * Servlet implementation class PWServlet
 */
@WebServlet({ "/PWServlet", "/pwservlet" })
public class PWServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PWServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String vfpw = request.getParameter("vfpw");
		PrintWriter writer = response.getWriter(); 
		String decodedPassword = PasswordUtil.passwordDecode(vfpw);
		writer.println("<h1>DecodedPW: " + decodedPassword + "</h1>");
		String encodedPassword = PasswordUtil.passwordEncode(vfpw, "aes");
		writer.println("<h1>EncodedPW: " + encodedPassword + "</h1>");
		writer.close();
	}


}
