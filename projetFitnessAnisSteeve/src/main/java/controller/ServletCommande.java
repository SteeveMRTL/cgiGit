package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoCommandeMySql;
import model.*;

/**
 * Servlet implementation class ServletCommande
 */
@WebServlet("/ServletCommande")
public class ServletCommande extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletCommande() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		Panier panier = (Panier) session.getAttribute("panier");
		Client client = (Client) session.getAttribute("client");

		Commande commande = new Commande();
		System.out.println(client.toString());
		commande.setIdClient(client.getIdClient());
		try {
			commande.setDate(new DaoCommandeMySql().sysDate());
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		if (panier != null) {
			commande.setTotal(panier.getPrixTotal());
			commande.setInfo(panier.writeInfo());
		}

		try {
			new DaoCommandeMySql().create(commande);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		session.setAttribute("panier", null);
		request.getRequestDispatcher("/WEB-INF/pPanierValide.jsp").forward(request, response);

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
