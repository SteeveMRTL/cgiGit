package dao;

import java.sql.SQLException;
import model.Commande;

public interface DaoCommande extends Dao<Commande, Integer> {
	
	public String sysDate () throws ClassNotFoundException, SQLException, SQLException;
	
	

}
