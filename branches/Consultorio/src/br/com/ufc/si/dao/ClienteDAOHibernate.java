package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.ClienteDAO;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.modelo.Cliente;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class ClienteDAOHibernate implements ClienteDAO {
	
	private Session session = HibernateUtil.getSessionFactory().openSession();
	
	public void setSession(Session session){
		this.session = session;
	}
	
	public void salvar(Cliente cliente) {
		Transaction tx = session.beginTransaction();
		session.save(cliente);
		tx.commit();
	}

	public void atualizar(Cliente cliente) {
		// TODO Auto-generated method stub

	}

	public void excluir(Cliente cliente) {
		// TODO Auto-generated method stub

	}

	public Cliente carregar(Cliente cliente) {
		// TODO Auto-generated method stub
		return null;
	}

	public Cliente buscarPorLogin(Cliente cliente) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Cliente> listar() {
		return this.session.createCriteria(Cliente.class).list();
	}

}