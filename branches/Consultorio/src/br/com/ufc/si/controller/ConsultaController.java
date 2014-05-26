package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.ClienteDAOHibernate;
import br.com.ufc.si.dao.ConsultaDAOHibernate;
import br.com.ufc.si.dao.DentistaDAOHibernate;
import br.com.ufc.si.dao.ProcedimentoDAOHibernate;
import br.com.ufc.si.modelo.Consulta;

@Resource
public class ConsultaController {
	
	private final Result result;
	private final ConsultaDAOHibernate dao;
	private final DentistaDAOHibernate daoDentista;
	private final ProcedimentoDAOHibernate daoProcedimento;
	private final ClienteDAOHibernate daoCliente;
	
	public ConsultaController(Result result, ConsultaDAOHibernate dao,
			DentistaDAOHibernate daoDentista,
			ProcedimentoDAOHibernate daoProcedimento,
			ClienteDAOHibernate daoCliente) {
		
		this.result = result;
		this.dao = dao;
		this.daoDentista = daoDentista;
		this.daoProcedimento = daoProcedimento;
		this.daoCliente = daoCliente;
	}
	
	public void formConsulta(Long id){
		Consulta consulta;
		if(id != null){
			consulta = dao.carregar(id);
		}else{
			consulta = new Consulta();
		}
		
		result.include("consulta", consulta);
	}
	
	public List<Consulta> lista(){
		return dao.listar();
	}
	
	
	public void adiciona(Consulta consulta){
		if(consulta.getId() != 0){
			dao.atualizar(consulta);
		}else{
			dao.salvar(consulta);
		}
	
		result.redirectTo(this).lista();
	}
	
	public void remove(long id) {
		Consulta consulta = dao.carregar(id);
		dao.excluir(consulta);
		result.redirectTo(this).lista();
	}
}
