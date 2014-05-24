package br.com.ufc.si.util;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;

@Component
public class CreatorSession implements ComponentFactory<Session> {

	private final SessionFactory sessionFactory;
	private Session session;

	public CreatorSession(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@PostConstruct
	public void abre() {
		this.session = sessionFactory.openSession();
	}

	public Session getInstance() {
		Session session = sessionFactory.openSession();
		return session;
	}

	@PreDestroy
	public void fecha() {
		this.session.close();
	}

}
