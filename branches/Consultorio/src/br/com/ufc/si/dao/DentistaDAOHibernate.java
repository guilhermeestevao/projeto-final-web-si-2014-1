package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.ufc.si.interfaces.DentistaDAO;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.modelo.Dentista;
import br.com.ufc.si.util.HibernateUtil;

public class DentistaDAOHibernate implements DentistaDAO{

private Session session = HibernateUtil.getSessionFactory().openSession();
	
	public void setSession(Session session){
		this.session = session;
	}
	
	public void salvar(Dentista dentista) {
		Transaction tx = session.beginTransaction();
		session.save(dentista);
		tx.commit();
	}

	public void atualizar(Dentista dentista) {
	
	}

	public void excluir(Dentista dentista) {
	
	}

	public Dentista carregar(Dentista dentista) {
		return null;
	}

	public Dentista buscarPorLogin(Dentista dentista) {
		return null;
	}

	public List<Dentista> listar() {
		return this.session.createCriteria(Administrador.class).list();
	}
	
}
