package br.com.ufc.si.modelo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class Usuario {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(length=100)
	private String nome;
	@Column(length=50)
	private String email;
	@Column(length=20)
	private String senha;
	@Column(length=30)
	private String endereco;
	@Column(length=30)
	private String bairro;
	@Column(nullable=true)
	private int numero;
	@Column(length=30)
	private String cidade;
	@Column(length=2)
	private String estado;
	@Column(length=15)
	private String fone1;
	@Column(length=15)
	private String fone2;
	@Column(length=1)
	private String sexo;
	@Temporal(TemporalType.DATE)
	private Date nascimento;

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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getFone1() {
		return fone1;
	}
	public void setFone1(String fone1) {
		this.fone1 = fone1;
	}
	public String getFone2() {
		return fone2;
	}
	public void setFone2(String fone2) {
		this.fone2 = fone2;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public Date getNascimento() {
		return nascimento;
	}
	public void setNascimento(String nascimento) {
		Date date = null;
		try {
			if(nascimento != null)
				date = new SimpleDateFormat("yyyy-MM-dd").parse(nascimento);
			else
				date = null;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.nascimento = date;
	}
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nome=" + nome + ", email=" + email
				+ ", senha=" + senha + ", endereco=" + endereco + ", bairro="
				+ bairro + ", numero=" + numero + ", cidade=" + cidade
				+ ", estado=" + estado + ", fone1=" + fone1 + ", fone2="
				+ fone2 + ", sexo=" + sexo + ", nascimento=" + nascimento + "]";
	}
	
}
