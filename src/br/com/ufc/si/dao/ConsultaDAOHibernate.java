package br.com.ufc.si.dao;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
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
	
	public List<Consulta> consultasDoDia(){
		Query q = session.createQuery("SELECT c FROM Consulta c WHERE c.dia = ?");
		q.setParameter(0, new Date());
		return q.list();
	}
	
	public List<Consulta> consultasDoDia(String inicio, String fim){
		String[] i = inicio.split("-");
		String[] f = fim.split("-");
		
		Calendar dataInicio = Calendar.getInstance();
		Calendar dataFinal = Calendar.getInstance();
		
		dataInicio.set(Calendar.DAY_OF_MONTH, Integer.parseInt(i[2]));
		dataInicio.set(Calendar.MONTH, Integer.parseInt(i[1])-1);
		dataInicio.set(Calendar.YEAR, Integer.parseInt(i[0]));
		
		dataFinal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(f[2]));
		dataFinal.set(Calendar.MONTH, Integer.parseInt(f[1])-1);
		dataFinal.set(Calendar.YEAR, Integer.parseInt(f[0]));
		
		Query q = session.createQuery("SELECT c FROM Consulta c WHERE c.dia BETWEEN ? AND ? ");  
	    q.setParameter(0, dataInicio.getTime());  
	    q.setParameter(1, dataFinal.getTime());
	    return q.list();
	    
	}
	
}
