package br.com.ufc.si.modelo;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;



@Entity
public class Dentista extends Usuario {
	
	private String cro;
	@OneToOne
	@JoinColumn(name = "assistente_id")
	private Assistente assistente;
	
	public String getCro() {
		return cro;
	}
	public void setCro(String cro) {
		this.cro = cro;
	}
	public Assistente getAssistente() {
		return assistente;
	}
	public void setAssistente(Assistente assistente) {
		this.assistente = assistente;
	}
	@Override
	public String toString() {
		return "Dentista [cro=" + cro + ", assistente=" + assistente + "]";
	}
	
	
	
}
