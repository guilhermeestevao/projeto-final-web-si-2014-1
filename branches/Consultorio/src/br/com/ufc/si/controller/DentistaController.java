package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.AssistenteDAOHibernate;
import br.com.ufc.si.dao.DentistaDAOHibernate;
import br.com.ufc.si.modelo.Dentista;

@Resource
public class DentistaController {

	private final DentistaDAOHibernate dao;
	private final AssistenteDAOHibernate assistenteDao;
	private final Result result;
	
	public DentistaController(DentistaDAOHibernate dao, Result result,
			AssistenteDAOHibernate assistenteDao) {
		this.result = result;
		this.dao = dao;
		this.assistenteDao = assistenteDao;
	}

	public void formDentista(Long id) {
		Dentista dentista;
		if(id != null){
			dentista = dao.carregar(id);
		}else{
			dentista = new Dentista();
		}
		result.include("dentista", dentista);
		result.include("assistente", assistenteDao.listar());
		/* ABRE O FORMULARIO */
	}

	public List<Dentista> lista() {
		return dao.listar();
	}

	public void adiciona(Dentista dentista) {
		if(dentista.getId() != 0){
			dao.atualizar(dentista);
		}else{
			dao.salvar(dentista);
		}
		result.redirectTo(this).lista();
	}

	public void remove(long id) {
		Dentista dentista = dao.carregar(id);
		dao.excluir(dentista);
		result.redirectTo(this).lista();
	}

}
