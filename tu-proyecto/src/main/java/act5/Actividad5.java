package act5;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Actividad5
 */
public class Actividad5 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Actividad5() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String edad = request.getParameter("age");
		if (edad != null) {
			String categoria = "";
			int edad_int = Integer.parseInt(edad);
			// Segun la edad, va entrando en los diferentes case hasta que una de las
			// condiciones coincida
			if (edad_int < 12) {
		        categoria = "Infante";
		    } else if (edad_int >= 12 && edad_int < 18) {
		        categoria = "Adolescente";
		    } else if (edad_int >= 18 && edad_int < 60) {
		        categoria = "Adulto";
		    } else if (edad_int >= 60) {
		        categoria = "Anciano";
		    }
			request.setAttribute("categ", categoria);
		}
		getServletContext().getRequestDispatcher("/categorizacion_edades.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
