package br.com.ufc.si.interfaces;

import java.util.List;

import br.com.ufc.si.modelo.Dentista;

public interface DentistaDAO {

	public void salvar(Dentista dentista);
	public void atualizar(Dentista dentista);
	public void excluir(Dentista dentista);
	public Dentista carregar(Dentista dentista);
	public Dentista buscarPorLogin(Dentista dentista);
	public List<Dentista> listar();
	
}
