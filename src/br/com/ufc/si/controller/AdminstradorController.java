package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.AdministradorDAOHibernate;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.util.HibernateUtil;

@Resource
public class AdminstradorController {

	private AdministradorDAOHibernate dao;
	private Result result;

	public AdminstradorController(AdministradorDAOHibernate dao, Result result){
		this.result = result;
		this.dao = dao;
	}

	public void novoAdminstrador() {/* ABRE O FORMULARIO */}

	public List<Administrador> lista(){
		return dao.listar();
	}

	public void adiciona(Administrador administrador){
		dao.salvar(administrador);
		result.redirectTo(this).lista();
	}


}
