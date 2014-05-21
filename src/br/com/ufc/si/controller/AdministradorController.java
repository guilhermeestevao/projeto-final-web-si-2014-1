package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.AdministradorDAOHibernate;
import br.com.ufc.si.modelo.Administrador;

@Resource
public class AdministradorController {

	private AdministradorDAOHibernate dao;
	private Result result;

	public AdministradorController(AdministradorDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	public void formAdministrador(Long id) {
		Administrador administrador;
		if(id != null){
			administrador = dao.carregar(id);
		}else{
			administrador = null;
		}
		result.include("administrador", administrador);
		/* ABRE O FORMULARIO */
	}

	public List<Administrador> lista(){
		return dao.listar();
	}

	public void adiciona(Administrador administrador){
		if(administrador.getId() != 0){
			dao.atualizar(administrador);
		}else{
			dao.salvar(administrador);
		}
		result.redirectTo(this).lista();
	}
	
	public void remove(long id){
		Administrador adminstrador = dao.carregar(id);
		dao.excluir(adminstrador);
		result.redirectTo(this).lista();
	}

}
