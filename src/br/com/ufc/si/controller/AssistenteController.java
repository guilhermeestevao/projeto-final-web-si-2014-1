package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.AssistenteDAOHibernate;
import br.com.ufc.si.interfaces.AssistenteDAO;
import br.com.ufc.si.modelo.Assistente;

@Resource
public class AssistenteController{

	private AssistenteDAOHibernate dao;
	private Result result;

	public AssistenteController(AssistenteDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	public void novoAssistente(){};

	public List<Assistente> lista(){
		return dao.listar();
	}

	public void adiciona(Assistente assistente){
		dao.salvar(assistente);
		result.redirectTo(this).lista();
	}

	public void alterar(Assistente assistente){
		dao.atualizar(assistente);
		result.redirectTo(this).lista();
	}

	public Assistente edita(long id) {
		return dao.carregar(id);
	}

	public void remove(long id) {
		Assistente assistente = dao.carregar(id);
		dao.excluir(assistente);
		result.redirectTo(this).lista();
	}

}
