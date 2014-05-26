package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.ClienteDAO;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.modelo.Cliente;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class ClienteDAOHibernate implements ClienteDAO {
	
	private final Session session;
	
	public ClienteDAOHibernate(Session session){
		this.session = session;
	}
	
	public void salvar(Cliente cliente) {
		Transaction tx = session.beginTransaction();
		session.save(cliente);
		tx.commit();
	}

	public void atualizar(Cliente cliente) {
		Transaction tx = session.beginTransaction();
		session.update(cliente);
		tx.commit();
	}

	public void excluir(Cliente cliente) {
		Transaction tx = session.beginTransaction();
		session.delete(cliente);
		tx.commit();
	}

	public Cliente carregar(long id) {
		return (Cliente) this.session.load(Cliente.class, id) ;
	}

	public Cliente buscarPorLogin(Cliente cliente) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Cliente> listar() {
		return this.session.createCriteria(Cliente.class).list();
	}

	public List<Cliente> buscarPorNome(String nome) {
		// TODO Auto-generated method stub
		return session.createCriteria(Cliente.class)
			      .add(Restrictions.ilike("nome", nome, MatchMode.ANYWHERE))
			      .list();
	}

}
