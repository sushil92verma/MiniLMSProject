package com.nucleus.hibernate;

import org.hibernate.SessionFactory;
import com.nucleus.model.Customer;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;


public class HibernateUtil
{
    private static SessionFactory sessionFactory;
    public static SessionFactory getSessionFactory()
    {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();
                Properties settings = new Properties();
                settings.put(Environment.DRIVER, "oracle.jdbc.driver.OracleDriver");
                settings.put(Environment.URL, "jdbc:oracle:thin:localhost:1521:orcl?useSSL=false");
                settings.put(Environment.USER, "sh");
                settings.put(Environment.PASS, "garry");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.Oracle10gDialect");
                settings.put(Environment.SHOW_SQL, "true"); //optional
                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
                settings.put(Environment.HBM2DDL_AUTO, "create");
                configuration.setProperties(settings); //all the settings will reflect in configuration object
                //configuration.addAnnotatedClass(Customer.class);//Customer class
                //configuration.addAnnotatedClass(Loan.class);//Loan CLass

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties()).build();
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            }
            catch(Exception e)
            {
                System.out.println("Something went wrong: "+e);
            }
        }
        return sessionFactory;
    }
}