package by.nc.teamone.dba.dao.impl;

import by.nc.teamone.dba.dao.IBaseDAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

@Repository
@Transactional
public class BaseDAOImpl<T, PK extends Serializable> implements IBaseDAO<T, PK> {
	
	@Autowired
	SessionFactory sessionFactory;
	
	private Class<T> clazz;
	
	public BaseDAOImpl() {
		super();
	}

	public BaseDAOImpl(Class<T> clazz){
		this.clazz = clazz;
	}
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> getAll() {
		@SuppressWarnings("deprecation")
		List<T> list = getSession().createCriteria(clazz).list();
		return list;
	}

	@Override
	public T get(PK id) {
		T object = getSession().get(clazz, id);
		return object;
	}

	@SuppressWarnings("unchecked")
	@Override
	public PK add(T object) {		
		PK id = (PK) getSession().save(object);
		return id;
	}

	@Override
	public void delete(Object object) {
		getSession().delete(object);
	}
	
	@Override
	public void update(Object object) {
		getSession().update(object);
	}
}
