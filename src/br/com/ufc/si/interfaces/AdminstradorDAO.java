package br.com.ufc.si.interfaces;

import java.util.List;

import br.com.ufc.si.modelo.Administrador;

public interface AdminstradorDAO {
	
	public void salvar(Administrador administrador);
	public void atualizar(Administrador administrador);
	public void excluir(Administrador administrador);
	public Administrador carregar(Administrador administrador);
	public Administrador buscarPorLogin(Administrador administrador);
	public List<Administrador> listar();

}
