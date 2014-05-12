package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.ClienteDAOHibernate;
import br.com.ufc.si.modelo.Cliente;

@Resource
public class ClienteController {

	private ClienteDAOHibernate dao;
	private Result result;

	public ClienteController(ClienteDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	public void novoCliente() {/* ABRE O FORMULARIO */}

	public List<Cliente> lista(){
		return dao.listar();
	}

	public void adiciona(Cliente cliente){
		dao.salvar(cliente);
		result.redirectTo(this).lista();
	}

}
