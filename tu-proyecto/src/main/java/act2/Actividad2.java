package act2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Actividad2
 */
public class Actividad2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Actividad2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String distancia = request.getParameter("distancia");
		String velocidad = request.getParameter("velocidad");
		if (distancia != null && velocidad != null){
			double dist = Double.parseDouble(distancia);
			double vel = Double.parseDouble(velocidad);
			double tiempo = dist/vel;
			System.out.println(tiempo);
			request.setAttribute("tiempo", tiempo);
		}
		getServletContext().getRequestDispatcher("/calculo_tiempo_viaje.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
