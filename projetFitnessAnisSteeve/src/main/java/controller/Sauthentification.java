package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoClient;
import dao.DaoClientMySql;

import model.Client;

/**
 * Servlet implementation class Sauthentification
 */
@WebServlet("/Sauthentification")
public class Sauthentification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Sauthentification() {
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
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pErreurAuth.jsp");

		int id = Integer.parseInt(request.getParameter("id"));
		String mdp = request.getParameter("mdp");
		Client c = null;
		try {
			c = authentification(id,mdp);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		if (c != null){
			rd = request.getRequestDispatcher("/WEB-INF/pConfirmAuthentif.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("client",c);
		}

		rd.forward(request, response);
	}

	private Client authentification(int id, String mdp) throws ClassNotFoundException, SQLException {
		Client c = new DaoClientMySql().findById(id);
		if (c != null && !mdp.equals(c.getMdp()))
			c = null;
		return c;
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
