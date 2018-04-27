package Utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateUtils {
	static	Configuration cfg = null;
	static SessionFactory sessionFactory= null;
	static
	{
		cfg = new Configuration().configure();		
		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(cfg.getProperties()).buildServiceRegistry();
	    sessionFactory = cfg.buildSessionFactory(serviceRegistry);
	}	
	public static Session getSessionObject(){
		return sessionFactory.getCurrentSession();
	} 
	
	 public static SessionFactory getsessionFactory()
	 {
		 return sessionFactory;
	 }
	 
	 public static void main(String[] args)
	 {
		 
	 }
}
