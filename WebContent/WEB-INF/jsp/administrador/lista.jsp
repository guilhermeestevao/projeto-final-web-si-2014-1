<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-1.3.2.min.js"/>"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1 style="text-align: center; margin-bottom: 20px;">Lista de Administradores</h1>
	<table class="table table-striped" style="width: 60%; margin-left: 20%;">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Email </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${administradorList}" var="administrador">
				<tr>
					<td><a a data-toggle="modal" href="#infoAdicionais${administrador.id}">${administrador.nome}</a></td>
					<td>${administrador.email}</td>
					<td><a href="formAdministrador?id=${administrador.id}">Editar</a></td>
					<td><a href="remove?id=${administrador.id}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<c:forEach items="${administradorList}" var="administrador">
		<div class="modal fade" id="infoAdicionais${administrador.id}" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">Consultório Online</button>
						<h4 class="modal-title">Informações Adicionais</h4>
					</div>
					<div class="modal-body">
						<label>Nome:</label> ${administrador.nome} <br/>
						<label>Email:</label> ${administrador.email} <br/>
						<label>Endereço:</label> ${administrador.endereco} <br/>
						<label>Bairro:</label> ${administrador.bairro} <br/>
						<label>Número:</label> ${administrador.numero} <br/>
						<label>Cidade:</label> ${administrador.cidade} <br/>
						<label>Estado:</label> ${administrador.estado} <br/>
						<label>Sexo:</label> ${administrador.sexo} <br/>
						<label>Data de Nascimento:</label> ${administrador.nascimento} <br/>
						<label>Telefone 1:</label> ${administrador.fone1} <br/>
						<label>Telefone 2:</label> ${administrador.fone2} <br/>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</c:forEach>

</body>
</html>