package br.com.ufc.si.modelo;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity
public class Assistente extends Usuario {
	
	@OneToOne(mappedBy="assistente")
	private Dentista dentista;

	public Dentista getDentista() {
		return dentista;
	}

	public void setDentista(Dentista dentista) {
		this.dentista = dentista;
	}
	
}
