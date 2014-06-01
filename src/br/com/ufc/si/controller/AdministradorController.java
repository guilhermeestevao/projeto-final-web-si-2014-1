package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.AdministradorDAOHibernate;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.util.Restrito;

@Resource
public class AdministradorController {

	private AdministradorDAOHibernate dao;
	private Result result;

	public AdministradorController(AdministradorDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	@Restrito
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

	@Restrito
	public List<Administrador> lista(){
		return dao.listar();
	}

	@Restrito
	public void adiciona(Administrador administrador){
		if(administrador.getId() != 0){
			dao.atualizar(administrador);
		}else{
			dao.salvar(administrador);
		}
		result.redirectTo(this).lista();
	}
	
	@Restrito
	public void remove(long id){
		Administrador adminstrador = dao.carregar(id);
		dao.excluir(adminstrador);
		result.redirectTo(this).lista();
	}

}
