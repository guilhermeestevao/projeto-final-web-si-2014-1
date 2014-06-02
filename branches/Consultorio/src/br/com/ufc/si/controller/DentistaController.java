package br.com.ufc.si.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.AssistenteDAOHibernate;
import br.com.ufc.si.dao.DentistaDAOHibernate;
import br.com.ufc.si.modelo.Dentista;
import br.com.ufc.si.util.Restrito;

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

	@Restrito
	public void formDentista(Long id) {
		Dentista dentista;
		if(id != null){
			dentista = dao.carregar(id);
		}else{
			dentista = new Dentista();
		}
		result.include("dentista", dentista);
		result.include("assistente", assistenteDao.assistentesNaoAlocados());
		/* ABRE O FORMULARIO */
	}

	@Restrito
	public List<Dentista> lista() {
		return dao.listar();
	}

	@Restrito
	public void adiciona(Dentista dentista) {
		if(dentista.getId() != 0){
			dao.atualizar(dentista);
		}else{
			dao.salvar(dentista);
		}
		result.redirectTo(this).lista();
	}

	@Restrito
	public void remove(long id) {
		Dentista dentista = dao.carregar(id);
		dao.excluir(dentista);
		result.redirectTo(this).lista();
	}

}
