package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.AssistenteDAOHibernate;
import br.com.ufc.si.modelo.Assistente;
import br.com.ufc.si.util.Restrito;

@Resource
public class AssistenteController{

	private AssistenteDAOHibernate dao;
	private Result result;

	public AssistenteController(AssistenteDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	@Restrito
	public void novaConsulta(){
		// abre o formulario para marcar nova consulta
	}
	
	@Restrito
	public void formAssistente(Long id){
		Assistente assistente;
		if(id != null){
			assistente = dao.carregar(id);
		}else{
			assistente = null;
		}
		result.include("assistente", assistente);
	};

	@Restrito
	public List<Assistente> lista(){
		return dao.listar();
	}

	@Restrito
	public void adiciona(Assistente assistente){
		if(assistente.getId() != 0){
			dao.atualizar(assistente);
		}else{
			dao.salvar(assistente);
		}
		result.redirectTo(this).lista();
	}

	@Restrito
	public void remove(long id) {
		Assistente assistente = dao.carregar(id);
		dao.excluir(assistente);
		result.redirectTo(this).lista();
	}

}
