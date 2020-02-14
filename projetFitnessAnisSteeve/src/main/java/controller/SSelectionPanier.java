package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Article;
import model.Ligne;
import model.Panier;

/**
 * Servlet implementation class SSelectionPanier
 */
@WebServlet("/SSelectionPanier")
public class SSelectionPanier extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SSelectionPanier() {
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

		String nomArticle = request.getParameter("sport");

		Article article = findArticle(nomArticle); //trouve l'article dans la liste d'articles chargée en mémoire par le listener d'application

		int quantite = Integer.parseInt(request.getParameter("quantite"));

		Ligne ligne = new Ligne(article, quantite);

		Panier panier = (Panier) session.getAttribute("panier");
		if (panier == null) {
			panier = new Panier();
			session.setAttribute("panier", panier);
		}
		panier.addLigne(ligne);

		request.getRequestDispatcher("pSelectionPanier.jsp").forward(request, response);
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

	private Article findArticle(String nomArticle){
		ServletContext application = this.getServletContext();
		Article article = null;
		@SuppressWarnings("unchecked")
		ArrayList<Article> tab = (ArrayList<Article>) application.getAttribute("sports");
		for (Article a : tab)	
			if (nomArticle.equals(a.getNom()))
				article = new Article(a.getId(), a.getNom(), a.getPrix());
	return article;
	}
}
