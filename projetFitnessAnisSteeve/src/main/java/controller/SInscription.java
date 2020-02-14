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

import dao.DaoClientMySql;
import model.Client;

/**
 * Servlet implementation class Servlet2
 */
@WebServlet("/SInscription")
public class SInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SInscription() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/confirmInscrit.jsp");
	   
		int idClient=Integer.parseInt (request.getParameter("id"));
		String nom=request.getParameter("nom");
		String prenom =request.getParameter("prenom");
		String mdp=request.getParameter("mdp");
		String email=request.getParameter("email");
		
		Client c= new Client(idClient, mdp, nom, prenom, email);
	
		try {
			if(verifId(idClient)){
			new DaoClientMySql().create(c);

			HttpSession session = request.getSession();
			session.setAttribute("client",c);
			} else rd = request.getRequestDispatcher("/WEB-INF/pClientExisteDeja.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rd.forward(request, response);
		
		
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private boolean verifId(int idClient) throws ClassNotFoundException,SQLException{
		Client c = new DaoClientMySql().findById(idClient);
		if (c==null)
			return true;
		return false;
	}
}
