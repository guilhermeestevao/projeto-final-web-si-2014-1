package br.com.ufc.si.interfaces;

import java.util.List;

import br.com.ufc.si.modelo.Cliente;

public interface ClienteDAO {
	
	public void salvar(Cliente cliente);
	public void atualizar(Cliente cliente);
	public void excluir(Cliente cliente);
	public Cliente carregar(long id);
	public Cliente buscarPorLogin(Cliente cliente);
	public List<Cliente> listar();

}
