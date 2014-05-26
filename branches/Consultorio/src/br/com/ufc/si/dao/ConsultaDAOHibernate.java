package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.ConsultaDAO;
import br.com.ufc.si.modelo.Consulta;

@Component
public class ConsultaDAOHibernate implements ConsultaDAO {
	
	private final Session session;
	
	public ConsultaDAOHibernate(Session session){
		this.session = session;
	}

	public void salvar(Consulta consulta) {
		Transaction tx = session.beginTransaction();
		session.save(consulta);
		tx.commit();
	}

	public void atualizar(Consulta consulta) {
		Transaction tx = session.beginTransaction();
		session.update(consulta);
		tx.commit();
	}

	public void excluir(Consulta consulta) {
		Transaction tx = session.beginTransaction();
		session.delete(consulta);
		tx.commit();
	}

	public Consulta carregar(long id) {
		return (Consulta)session.load(Consulta.class, id);
	}

	public Consulta buscarPorLogin(Consulta consulta) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Consulta> listar() {
		return session.createCriteria(Consulta.class).list();
	}

}
