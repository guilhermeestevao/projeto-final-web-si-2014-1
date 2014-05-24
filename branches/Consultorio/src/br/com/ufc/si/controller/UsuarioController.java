package br.com.ufc.si.controller;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.ufc.si.bean.UsuarioBean;
import br.com.ufc.si.dao.UsuarioDAOHibernate;
import br.com.ufc.si.modelo.Usuario;

@Resource
public class UsuarioController {

	private final UsuarioDAOHibernate dao;
	private final Result result;
	private final Validator validator;
	private final UsuarioBean logado;

	public UsuarioController(UsuarioDAOHibernate dao, Result result,
			Validator validator, UsuarioBean logado) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
		this.logado = logado;
	}
	
	public void loginForm(){
		
	}
	
	public void login(String email, String senha) {
		Usuario carregado = dao.carrega(email, senha);
		
		if (carregado == null) {
		      validator.add(
		          new ValidationMessage("Login e/ou senha inválidos",
		              "usuario.login"));
		}
		
		validator.onErrorUsePageOf(UsuarioController.class).loginForm();
		logado.login(carregado);
		result.redirectTo("/");
	}
	
	public void logout() {
		logado.logout();
	    result.redirectTo("/");
	}
	
	
}
