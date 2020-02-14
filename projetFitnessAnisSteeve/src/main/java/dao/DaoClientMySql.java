
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import model.Client;


public class DaoClientMySql implements DaoClient {

	@Override
	public void create(Client c) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sports", "root", "root");

		String sql = "INSERT into clients (idClient, mdp, nom, prenom, email) values(?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, c.getIdClient());
		ps.setString(2, c. getMdp());
		ps.setString(3, c.getNom());
		ps.setString(4, c.getPrenom());
		ps.setString(5, c.getEmail());

		ps.executeUpdate();
		ps.close();
		conn.close();
	}

	@Override
	public Client findById(Integer idClient) throws ClassNotFoundException, SQLException {
		Client c = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sports", "root", "root");

		String sql = "select * from clients where idClient= " + idClient;
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);

		while (rs.next()) { 
			c = new Client();
			c.setIdClient(rs.getInt("idClient"));
			c.setMdp(rs.getString("mdp"));
			c.setNom(rs.getString("nom"));
			c.setPrenom(rs.getString("prenom"));
			c.setEmail(rs.getString("email"));
			
			
		}
		st.close();
		conn.close();
		return c;
	
	}

	@Override
	public List<Client> findAll() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void delete(Integer id) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void update(Client obj) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
	}



}
