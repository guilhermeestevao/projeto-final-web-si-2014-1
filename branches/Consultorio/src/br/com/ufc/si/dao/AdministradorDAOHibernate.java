package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.AdministradorDAO;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class AdministradorDAOHibernate implements AdministradorDAO {

	private Session session = HibernateUtil.getSessionFactory().openSession();
	
	public void setSession(Session session){
		this.session = session;
	}
	
	public void salvar(Administrador administrador) {
		Transaction tx = session.beginTransaction();
		session.save(administrador);
		tx.commit();
	}

	public void atualizar(Administrador administrador) {
		Transaction tx = session.beginTransaction();
		session.update(administrador);
		tx.commit();
	}

	public void excluir(Administrador administrador) {
		Transaction tx = session.beginTransaction();
		session.delete(administrador);
		tx.commit();
	}

	public Administrador carregar(long id) {
		return (Administrador)this.session.load(Administrador.class, id);
	}

	public Administrador buscarPorLogin(Administrador administrador) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Administrador> listar() {
		// TODO Auto-generated method stub
		return this.session.createCriteria(Administrador.class).list();
	}

}
