function Vlogin(){
	var email = document.form1.email.value;
	var senha = document.form1.senha.value;
	
	if(email == "" && senha == ""){
		alert('Email e Senha vazios!');
		return false;
	}else if(email == ""){
		alert('Email vazio!');
		return false;
	}else if(senha == ""){
		alert('Senha vazio!');
		return false;
	}
	
	
	
	return true;
		
}

function VAdministrador(){
	
	var nome = document.getElementById("nome").value;
	var email = document.getElementById("email").value;
	var senha = document.getElementById("senha").value;	
	var telefone = document.getElementById("fone1").value;
	var telefone2 = document.getElementById("fone2").value;
	
	if (nome == "" && email =="" && senha=="" && telefone =="" && telefone2==""){
		alert('Campos obrigatórios vazios!');
		return false;
	}else if(nome == ""){
		alert('Nome Vazio!');
		return false;
	}else if(email == ""){
		alert('Email Vazio!');
		return false;
	}else if(senha == ""){
		alert('Senha Vazio!');
		return false;
	}else if(telefone == "" && telefone2 == ""){
		alert('Cadastre pelo menos 1 telefone');
		return false;
	}
	return true;
}

function VAssistente(){
	
	var nome = document.getElementById("nome").value;
	var email = document.getElementById("email").value;
	var senha = document.getElementById("senha").value;	
	var telefone = document.getElementById("fone1").value;
	var telefone2 = document.getElementById("fone2").value;
	
	if (nome == "" && email =="" && senha=="" && telefone =="" && telefone2==""){
		alert('Campos obrigatórios vazios!');
		return false;
	}else if(nome == ""){
		alert('Nome Vazio!');
		return false;
	}else if(email == ""){
		alert('Email Vazio!');
		return false;
	}else if(senha == ""){
		alert('Senha Vazio!');
		return false;
	}else if(telefone == "" && telefone2 == ""){
		alert('Cadastre pelo menos 1 telefone');
		return false;
	}
	return true;
}

function VDentista(){
	
	var nome = document.getElementById("nome").value;
	var email = document.getElementById("email").value;
	var senha = document.getElementById("senha").value;	
	var telefone = document.getElementById("fone1").value;
	var telefone2 = document.getElementById("fone2").value;
	var cro = document.getElementById("cro").value;
	
	if (nome == "" && email =="" && senha=="" && telefone =="" && telefone2==""){
		alert('Campos obrigatórios vazios!');
		return false;
	}else if(nome == ""){
		alert('Nome Vazio!');
		return false;
	}else if(email == ""){
		alert('Email Vazio!');
		return false;
	}else if(senha == ""){
		alert('Senha Vazio!');
		return false;
	}else if(telefone == "" && telefone2 == ""){
		alert('Cadastre pelo menos 1 telefone');
		return false;
	}else if(cro == ""){
		alert('CRO Vazio!');
		return false;
	}
	return true;
}

function VConsulta(){
	
	var dentista = document.getElementById("dentista").value;
	var cliente = document.getElementById("cliente").value;
	var procedimento = document.getElementById("procedimento").value;
	var hora = document.getElementById("hora").value;
	var dia = document.getElementById("dia").value;

	if(dentista == "" && cliente =="" && procedimento == "" && hora == "" && dia == ""){
		alert('Campos obrigatorios vazios!');
		return false;
	}else if(dentista == ""){
		alert('Campo dentista vazio!');
		return false;
	}else if(cliente == ""){
		alert('Campo cliente vazio!');
		return false;
	}else if(procedimento ==""){
		alert('Campo procedimento vazio!');
		return false;
	}else if(hora == ""){
		alert('Hora da Consulta nao definida!');
		return false;
	}else if(dia == ""){
		alert('Dia da Consulta nao definido');
		return false;
	}
	return true;
}