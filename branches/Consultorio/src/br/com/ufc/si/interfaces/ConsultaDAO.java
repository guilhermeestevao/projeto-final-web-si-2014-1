package br.com.ufc.si.interfaces;

import java.util.List;

import br.com.ufc.si.modelo.Consulta;

public interface ConsultaDAO {
	
	public void salvar(Consulta consulta);
	public void atualizar(Consulta consulta);
	public void excluir(Consulta consulta);
	public Consulta carregar(long id);
	public Consulta buscarPorLogin(Consulta consulta);
	public List<Consulta> listar();

}
