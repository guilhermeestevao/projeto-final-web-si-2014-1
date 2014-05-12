package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.AdminstradorDAO;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.modelo.Usuario;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class AdminstradorDAOHibernate implements AdminstradorDAO {

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
		// TODO Auto-generated method stub

	}

	public void excluir(Administrador administrador) {
		// TODO Auto-generated method stub

	}

	public Administrador carregar(Administrador administrador) {
		// TODO Auto-generated method stub
		return null;
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
