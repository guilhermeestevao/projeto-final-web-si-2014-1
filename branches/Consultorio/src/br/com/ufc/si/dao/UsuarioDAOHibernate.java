package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.UsuarioDAO;
import br.com.ufc.si.modelo.Usuario;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class UsuarioDAOHibernate implements UsuarioDAO {

	private Session session = HibernateUtil.getSessionFactory().openSession();
		
	public void salvar(Usuario usuario) {
		Transaction tx = session.beginTransaction();
		session.save(usuario);
		tx.commit();
	}

	public void atualizar(Usuario usuario) {
		// TODO Auto-generated method stub

	}

	public void excluir(Usuario usuario) {
		// TODO Auto-generated method stub

	}

	public Usuario carregar(Integer codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	public Usuario buscarPorLogin(String login) {
		// TODO Auto-generated	 method stub
		return null;
	}

	public List<Usuario> listar() {
		 return this.session.createCriteria(Usuario.class).list();
	}

}
