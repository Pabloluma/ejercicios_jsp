package act7;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Actividad7
 */
public class Actividad7 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Actividad7() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String numero = request.getParameter("numero");
		if (numero != null) {
			int num = Integer.parseInt(numero);
			ArrayList<Integer> listResultado = new ArrayList<>();
			for (int i=1; i < 10 + 1 ; i++) { 
	            int mult = num * i;
	            listResultado.add(mult);
	        }
			request.setAttribute("lista", listResultado);
			request.setAttribute("numTabla", num);
		}
		getServletContext().getRequestDispatcher("/tabla_multiplicar.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
