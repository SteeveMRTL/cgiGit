package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import model.Commande;

public class DaoCommandeMySql implements DaoCommande {
	
	
	public String sysDate() throws ClassNotFoundException, SQLException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sports", "root", "root");

		String sql = "select date (sysdate()) from dual";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		rs.next();

		return rs.getString(1);
	}

	@Override
	public List findAll() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Commande findById(Integer id) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(Commande obj) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sports", "root", "root");

		String sql = "INSERT into commandes (idClient, date, total, info) values(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, obj.getIdClient());
		ps.setString(2, obj.getDate());
		ps.setInt(3, obj.getTotal());
		ps.setString(4, obj.getInfo());

		ps.executeUpdate();
		ps.close();
		conn.close();		
	}

	@Override
	public void update(Commande obj) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer id) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
	}

}
