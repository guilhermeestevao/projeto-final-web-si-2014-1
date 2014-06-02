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

	<h1 style="text-align: center; margin-bottom: 20px;">Lista de Clientes</h1>
	<table class="table table-striped" style="width: 60%; margin-left: 20%;">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Email </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${clienteList}" var="cliente">
				<tr>
					<td><a data-toggle="modal" href="#infoAdicionais${cliente.id}">${cliente.nome}</a></td>
					<td>${cliente.email}</td>
					<td><a href="formCliente?id=${cliente.id}">Editar</a></td>
					<td><a href="remove?id=${cliente.id}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<c:forEach items="${clienteList}" var="cliente">
		<div class="modal fade" id="infoAdicionais${cliente.id}" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">Consultório Online</button>
						<h4 class="modal-title">Informações Adicionais</h4>
					</div>
					<div class="modal-body">
						<label>Nome:</label> ${cliente.nome} <br/>
						<label>Email:</label> ${cliente.email} <br/>
						<label>Endereço:</label> ${cliente.endereco} <br/>
						<label>Bairro:</label> ${cliente.bairro} <br/>
						<label>Número:</label> ${cliente.numero} <br/>
						<label>Cidade:</label> ${cliente.cidade} <br/>
						<label>Estado:</label> ${cliente.estado} <br/>
						<label>Sexo:</label> ${cliente.sexo} <br/>
						<label>Data de Nascimento:</label> <fmt:formatDate value="${cliente.nascimento}" pattern="dd/MM/yyyy" /> <br/>
						<label>Telefone 1:</label> ${cliente.fone1} <br/>
						<label>Telefone 2:</label> ${cliente.fone2} <br/>
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