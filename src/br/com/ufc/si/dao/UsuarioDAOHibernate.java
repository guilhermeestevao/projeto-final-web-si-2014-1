package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.UsuarioDAO;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.modelo.Assistente;
import br.com.ufc.si.modelo.Dentista;
import br.com.ufc.si.modelo.Usuario;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class UsuarioDAOHibernate implements UsuarioDAO {

	private final Session session;

	public UsuarioDAOHibernate(Session session) {
		this.session = session;
	}

	public boolean existeUsuario(Usuario usuario) {
		Usuario encontrado = (Usuario) session.createCriteria(Usuario.class)
				.add(Restrictions.eq("email", usuario.getEmail()))
				.uniqueResult();
		return encontrado != null;
	}

	public Usuario carrega(String email, String senha) {
		
		Object obj = null;
		
		//Procura por um Administtrador
		obj = session.createCriteria(Administrador.class)
						.add(Restrictions.eq("email", email))
						.add(Restrictions.eq("senha", senha))
						.uniqueResult();
		
		if(obj != null  ) return (Administrador) obj;
		
		//Procura por um Assistente
		obj = session.createCriteria(Assistente.class)
				.add(Restrictions.eq("email", email))
				.add(Restrictions.eq("senha", senha))
				.uniqueResult();
		
		if(obj != null  ) return (Assistente) obj;
		
		//Procura por um Dentista
		obj = session.createCriteria(Dentista.class)
				.add(Restrictions.eq("email", email))
				.add(Restrictions.eq("senha", senha))
				.uniqueResult();
		
		
		if(obj != null  ) return (Dentista) obj;

		return null ;
	}

	public void salvar(Usuario usuario) {

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
		// TODO Auto-generated method stub
		return null;
	}

	public List<Usuario> listar() {
		return this.session.createCriteria(Usuario.class).list();
	}

}
