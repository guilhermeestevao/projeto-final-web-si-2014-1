package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.DentistaDAOHibernate;
import br.com.ufc.si.modelo.Dentista;

public class DentistaController {

	private DentistaDAOHibernate dao;
	private Result result;

	public DentistaController(DentistaDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	public void novoAdministrador() {/* ABRE O FORMULARIO */}

	public List<Dentista> lista(){
		return dao.listar();
	}

	public void adiciona(Dentista dentista){
		dao.salvar(dentista);
		result.redirectTo(this).lista();
	}

	
}
