package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.DentistaDAO;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.modelo.Cliente;
import br.com.ufc.si.modelo.Dentista;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class DentistaDAOHibernate implements DentistaDAO{

	private final Session session;
	
	public DentistaDAOHibernate(Session session){
		this.session = session;
	}
	
	public void salvar(Dentista dentista) {
		Transaction tx = session.beginTransaction();
		session.save(dentista);
		tx.commit();
	}

	public void atualizar(Dentista dentista) {
		Transaction tx = session.beginTransaction();
		session.update(dentista);
		tx.commit();
	}

	public void excluir(Dentista dentista) {
		Transaction tx = session.beginTransaction();
		session.delete(dentista);
		tx.commit();
	}

	public Dentista carregar(long id) {
		return (Dentista) this.session.load(Dentista.class, id) ;
	}

	public Dentista buscarPorLogin(Dentista dentista) {
		return null;
	}

	public List<Dentista> listar() {
		return this.session.createCriteria(Dentista.class).list();
	}
		
}
