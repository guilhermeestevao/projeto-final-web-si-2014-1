package br.com.ufc.si.interfaces;

import java.util.List;

import br.com.ufc.si.modelo.Usuario;

public interface UsuarioDAO {

	public void salvar(Usuario usuario);
	public void atualizar(Usuario usuario);
	public void excluir(Usuario usuario);
	public Usuario carregar(Integer codigo);
	public Usuario buscarPorLogin(String login);
	public List<Usuario> listar();
	
}
