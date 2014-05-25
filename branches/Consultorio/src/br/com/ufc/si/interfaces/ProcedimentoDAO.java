package br.com.ufc.si.interfaces;

import java.util.List;

import br.com.ufc.si.modelo.Procedimento;

public interface ProcedimentoDAO {
	
	public void salvar(Procedimento procedimento);
	public void atualizar(Procedimento procedimento);
	public void excluir(Procedimento procedimento);
	public Procedimento carregar(long id);
	public Procedimento buscarPorLogin(Procedimento procedimento);
	public List<Procedimento> listar();

}
