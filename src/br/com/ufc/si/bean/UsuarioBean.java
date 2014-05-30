package br.com.ufc.si.bean;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.ufc.si.modelo.Administrador;
import br.com.ufc.si.modelo.Assistente;
import br.com.ufc.si.modelo.Dentista;
import br.com.ufc.si.modelo.Usuario;

@Component
@SessionScoped
public class UsuarioBean {
	
	 private Usuario logado;

	 public void login(Usuario usuario) {
	    this.logado = usuario;
	 }
	  
	 public String getNome() {
	    return logado.getNome();
	 }
	 
	 public long getId(){
		 return logado.getId();
	 }
	  
	 public boolean isLogado() {
	    return logado != null;
	 }
	 
	 public String getInstanceof(){
		 if(this.logado instanceof Administrador) return "administrador";
		 if(this.logado instanceof Assistente) return "assistente";
		 if(this.logado instanceof Dentista) return "dentista";
		 return null;
	 }
	 
	 public void logout() {
		 this.logado = null;
	 }


}
