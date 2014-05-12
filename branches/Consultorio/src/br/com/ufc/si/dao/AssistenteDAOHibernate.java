package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.AssistenteDAO;
import br.com.ufc.si.modelo.Assistente;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class AssistenteDAOHibernate implements AssistenteDAO{

private Session session = HibernateUtil.getSessionFactory().openSession();
	
	public void setSession(Session session){
		this.session = session;
	}
	
	public void salvar(Assistente assistente) {
		Transaction tx = session.beginTransaction();
		session.save(assistente);
		tx.commit();
	}

	public void atualizar(Assistente assistente) {
		// TODO Auto-generated method stub

	}

	public void excluir(Assistente assistente) {
		// TODO Auto-generated method stub

	}

	public Assistente carregar(Assistente assistente) {
		// TODO Auto-generated method stub
		return null;
	}

	public Assistente buscarPorLogin(Assistente assistente) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Assistente> listar() {
		// TODO Auto-generated method stub
		return this.session.createCriteria(Assistente.class).list();
	}
	
}
