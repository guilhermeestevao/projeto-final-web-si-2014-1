package br.com.ufc.si.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.ProcedimentoDAO;
import br.com.ufc.si.modelo.Procedimento;

@Component
public class ProcedimentoDAOHibernate implements ProcedimentoDAO {

	private final Session session;
	
	public ProcedimentoDAOHibernate(Session session){
		this.session = session;
	}
	
	
	public void salvar(Procedimento procedimento) {
		Transaction tx = session.beginTransaction();
		session.save(procedimento);
		tx.commit();
	}

	public void atualizar(Procedimento procedimento) {
		Transaction tx = session.beginTransaction();
		session.update(procedimento);
		tx.commit();
	}

	public void excluir(Procedimento procedimento) {
		Transaction tx = session.beginTransaction();
		session.delete(procedimento);
		tx.commit();
	}

	public Procedimento carregar(long id) {
		return (Procedimento)this.session.load(Procedimento.class, id);
	}

	public Procedimento buscarPorLogin(Procedimento procedimento) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Procedimento> listar() {
		return this.session.createCriteria(Procedimento.class).list();
	}

}
