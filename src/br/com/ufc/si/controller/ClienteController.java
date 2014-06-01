package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.ClienteDAOHibernate;
import br.com.ufc.si.modelo.Cliente;
import br.com.ufc.si.util.Restrito;

@Resource
public class ClienteController {

	private ClienteDAOHibernate dao;
	private Result result;

	public ClienteController(ClienteDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	@Restrito
	public void formCliente(Long id) {
		Cliente cliente;
		if(id != null){
			cliente = dao.carregar(id);
		}else{
			cliente = null;
		}
		result.include("cliente", cliente);
	}
	
	@Restrito
	public List<Cliente> lista(){
		return dao.listar();
	}

	@Restrito
	public void adiciona(Cliente cliente){
		if(cliente.getId() != 0){
			dao.atualizar(cliente);
		}else{
			dao.salvar(cliente);
		}
		result.redirectTo(this).lista();
	}
	
	@Restrito
	public void remove(long id){
		Cliente cliente = dao.carregar(id);
		dao.excluir(cliente);
		result.redirectTo(this).lista();
	}

}
