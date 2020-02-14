package dao;

import java.util.List;
import java.sql.SQLException;

public interface Dao<T, PK> {
	public T findById(PK id) throws ClassNotFoundException, SQLException;

	public List<T> findAll() throws ClassNotFoundException, SQLException;

	public void create(T obj) throws ClassNotFoundException, SQLException;

	public void update(T obj) throws ClassNotFoundException, SQLException;

	public void delete(PK id) throws ClassNotFoundException, SQLException;
}
