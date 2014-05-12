package br.com.ufc.si.interfaces;

import java.util.List;

import br.com.ufc.si.modelo.Assistente;

public interface AssistenteDAO {

	public void salvar(Assistente assistente);
	public void atualizar(Assistente assistente);
	public void excluir(Assistente assistente);
	public Assistente carregar(Assistente assistente);
	public Assistente buscarPorLogin(Assistente assistente);
	public List<Assistente> listar();
	
}
