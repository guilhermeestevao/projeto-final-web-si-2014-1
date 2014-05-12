package br.com.ufc.si.modelo;

import java.lang.annotation.Inherited;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Consulta {

	@Id @GeneratedValue
	private long id;
	@OneToOne
	@JoinColumn(name = "dentista_id")
	private Dentista dentista;
	@OneToOne
	@JoinColumn(name = "procedimento_id")
	private Procedimento procedimento;
	@OneToOne
	@JoinColumn(name = "cliente_id")
	private Cliente cliente;
	@Column(name="horario_inicial")
	@Temporal(TemporalType.TIME)
	private Date horarioInicial;
	@Column(name="horario_final")
	@Temporal(TemporalType.TIME)
	private Date horarioFinal;
	@Temporal(TemporalType.DATE)
	private Date dia;
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public Dentista getDentista() {
		return dentista;
	}
	
	public void setDentista(Dentista dentista) {
		this.dentista = dentista;
	}
	
	public Procedimento getProcedimento() {
		return procedimento;
	}
	
	public void setProcedimento(Procedimento procedimento) {
		this.procedimento = procedimento;
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public Date getHorarioInicial() {
		return horarioInicial;
	}
	
	public void setHorarioInicial(Date horarioInicial) {
		this.horarioInicial = horarioInicial;
	}
	
	public Date getHorarioFinal() {
		return horarioFinal;
	}
	
	public void setHorarioFinal(Date horarioFinal) {
		this.horarioFinal = horarioFinal;
	}
	
	public Date getDia() {
		return dia;
	}
	
	public void setDia(Date dia) {
		this.dia = dia;
	}
	
	
	
}
