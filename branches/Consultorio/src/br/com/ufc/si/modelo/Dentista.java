package br.com.ufc.si.modelo;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Dentista extends Usuario {
	
	private String CRO;
	@OneToOne
	@JoinColumn(name = "assitente_id")
	private Assistente assitente;
	
	public String getCRO() {
		return CRO;
	}
	public void setCRO(String cRO) {
		CRO = cRO;
	}
	public Assistente getAssitente() {
		return assitente;
	}
	public void setAssitente(Assistente assitente) {
		this.assitente = assitente;
	}
	
}
