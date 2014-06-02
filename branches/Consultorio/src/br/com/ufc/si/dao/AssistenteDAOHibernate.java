package br.com.ufc.si.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.ufc.si.interfaces.AssistenteDAO;
import br.com.ufc.si.modelo.Assistente;
import br.com.ufc.si.modelo.Dentista;
import br.com.ufc.si.util.HibernateUtil;

@Component
public class AssistenteDAOHibernate implements AssistenteDAO{

	private final Session session;
	
	public AssistenteDAOHibernate(Session session){
		this.session = session;
	}	
	
	public void salvar(Assistente assistente) {
		Transaction tx = session.beginTransaction();
		session.save(assistente);
		tx.commit();
	}

	public void atualizar(Assistente assistente) {
		Transaction tx = session.beginTransaction();
		session.update(assistente);
		tx.commit();
	}

	public void excluir(Assistente assistente) {
		Transaction tx = session.beginTransaction();
		session.delete(assistente);
		tx.commit();
	}

	public Assistente carregar(long id) {
		return (Assistente) this.session.load(Assistente.class, id);
	}

	public Assistente buscarPorLogin(Assistente assistente) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Assistente> listar() {
		// TODO Auto-generated method stub
		return this.session.createCriteria(Assistente.class).list();
	}
	
	public List<Assistente> assistentesNaoAlocados(){
		
		List<Assistente> naoAlocados = new ArrayList<Assistente>();
		List<Assistente> alocados = listar();
		
		for (Assistente assistente : alocados) {
			if(assistente.getDentista() == null){
				naoAlocados.add(assistente);
			}
		}
		
		return naoAlocados;
	}
	
}
