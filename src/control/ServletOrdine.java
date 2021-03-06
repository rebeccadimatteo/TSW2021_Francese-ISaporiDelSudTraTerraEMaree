package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carrello;
import model.Item;

/**
 * Servlet implementation class ServletOrdine
 */
@WebServlet("/ServletOrdine")
public class ServletOrdine extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletOrdine() {
		super();

	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

// prende carrello dalla sessione se va avnti lo porta ad avanti 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Carrello car1 = (Carrello) request.getSession().getAttribute("car");
		String azione = request.getParameter("azione");

		if (azione.equalsIgnoreCase("avanti")) {
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Avanti.jsp");
			rd.forward(request, response);
			return;

		} // agiunge quantita e diminuisce quantita
		if (azione.equalsIgnoreCase("+")) {

			String coditem = request.getParameter("cod");
			int quant=Integer.parseInt(request.getParameter("agg"));
			int ind = car1.indice(coditem);
			Item el = car1.getItemIndex(ind);
			el.setQuantita(quant);

		} 

		// rimuove elemento
		if (azione.equalsIgnoreCase("rim")) {
			String coditem = request.getParameter("cod3");
			car1.rimuovi(coditem);

		}
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaOrdine.jsp");
		rd.forward(request, response);

	}

}
