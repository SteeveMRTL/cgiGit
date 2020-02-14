package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Article;

public class DaoArticleMySql implements DaoArticle {

	@Override
	public Article findById(Integer id) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sports", "root", "root");

		String sql = "SELECT * FROM articles WHERE id=" + id;
		Statement st = conn.createStatement();

		ResultSet rs = st.executeQuery(sql);

		Article article = new Article();

		while (rs.next()) {
			article.setId(rs.getInt(1));
			article.setNom(rs.getString(2));
			article.setPrix(rs.getInt(3));
		}

		st.close();
		conn.close();
		return article;
	}

	@Override
	public List<Article> findAll() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sports", "root", "root");

		String sql = "SELECT * FROM articles";
		Statement st = conn.createStatement();

		ResultSet rs = st.executeQuery(sql);

		ArrayList<Article> articles = new ArrayList<Article>();

		while (rs.next()) {
			Article a = new Article();
			a.setId(rs.getInt(1));
			a.setNom(rs.getString(2));
			a.setPrix(rs.getInt(3));

			articles.add(a); // add est une methode d instance car c est une
								// instance d'arraylist
		}

		st.close();
		conn.close();
		return articles;
	}

	@Override
	public void create(Article obj) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Article obj) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer id) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub

	}

}
