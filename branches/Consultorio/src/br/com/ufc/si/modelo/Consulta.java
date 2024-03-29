package br.com.ufc.si.modelo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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
	private String hora;
	@Temporal(TemporalType.DATE)
	private Date dia;
	@Column(columnDefinition="boolean default false")
	private boolean realizado;
	
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
	
	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public Date getDia() {
		return dia;
	}
	
	public void setDia(String dia) {
		Date date = null;
		try {
			if(dia!= null)
				date = new SimpleDateFormat("yyyy-MM-dd").parse(dia);
			else
				date = null;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.dia = date;
	}

	public boolean isRealizado() {
		return realizado;
	}

	public void setRealizado(boolean realizado) {
		this.realizado = realizado;
	}

	@Override
	public String toString() {
		return "Consulta [id=" + id + ", dentista=" + dentista
				+ ", procedimento=" + procedimento + ", cliente=" + cliente
				+ ", hora=" + hora + ", dia=" + dia + "]";
	}
	
	

}
