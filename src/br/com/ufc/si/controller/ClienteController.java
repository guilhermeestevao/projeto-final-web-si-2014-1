package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.ClienteDAOHibernate;
import br.com.ufc.si.modelo.Administrador;
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
	
	public void remove(long id){
		Cliente cliente = dao.carregar(id);
		dao.excluir(cliente);
		result.redirectTo(this).lista();
	}
	
	public void alterar(Cliente cliente){
		dao.atualizar(cliente);
		result.redirectTo(this).lista();
	}

	public Cliente edita(long id) {
		return dao.carregar(id);
	}

}
