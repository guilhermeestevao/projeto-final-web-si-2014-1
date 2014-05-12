package br.com.ufc.si.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
public class Procedimento {

	@Id @GeneratedValue
	private long id;
	@Column(length=100)
	private String nome;
	@Column(length=100)
	private String descricao;
	@Column
	private int tempomedio;
	@Column
	private int tempo;
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public int getTempomedio() {
		return tempomedio;
	}
	
	public void setTempomedio(int tempomedio) {
		this.tempomedio = tempomedio;
	}
	
	public int getTempo() {
		return tempo;
	}
	
	public void setTempo(int tempo) {
		this.tempo = tempo;
	}
	
	
}
