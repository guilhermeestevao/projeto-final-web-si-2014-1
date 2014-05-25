package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.ProcedimentoDAOHibernate;
import br.com.ufc.si.modelo.Procedimento;

@Resource
public class ProcedimentoController {
	
	private ProcedimentoDAOHibernate dao;
	private Result result;

	public ProcedimentoController(ProcedimentoDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	public void formProcedimento(Long id){
		Procedimento procedimento;
		if(id != null){
			procedimento = dao.carregar(id);
		}else{
			procedimento = null;
		}
		result.include("procedimento", procedimento);
	}
	
	public void adiciona(Procedimento procedimento){
		if(procedimento.getId() != 0){
			dao.atualizar(procedimento);
		}else{
			dao.salvar(procedimento);
		}
		result.redirectTo(this).lista();
	}
	
	public List<Procedimento> lista(){
		return dao.listar();
	}
	
	public void remove(Long id){
		Procedimento procedimento = dao.carregar(id);
		dao.excluir(procedimento);
		result.redirectTo(this).lista();
	}
	
}
