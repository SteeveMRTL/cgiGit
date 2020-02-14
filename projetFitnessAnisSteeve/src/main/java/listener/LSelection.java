package listener;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import model.Article;
import dao.DaoArticleMySql;

/**
 * Application Lifecycle Listener implementation class Listener1
 *
 */
@WebListener
public class LSelection implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public LSelection() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent arg0) {
		ArrayList<Article> sports=null;
		try {
			sports = (ArrayList<Article>)new DaoArticleMySql().findAll();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ServletContext application = arg0.getServletContext();		
		
		application.setAttribute("sports", sports);	
	}

}
