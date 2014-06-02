<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<h1 style="text-align: center; margin-bottom: 20px;">Lista de Assistentes</h1>
	<table class="table table-striped" style="width: 60%; margin-left: 20%;">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Email </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${assistenteList}" var="assistente">
				<tr>
					<td><a data-toggle="modal" href="#infoAdicionais${assistente.id}">${assistente.nome}</a></td>
					<td>${assistente.email}</td>
					<td><a href="formAssistente?id=${assistente.id}">Editar</a></td>
					<td><a href="remove?id=${assistente.id}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<c:forEach items="${assistenteList}" var="assistente">
		<div class="modal fade" id="infoAdicionais${assistente.id}" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">Consultório Online</button>
						<h4 class="modal-title">Informações Adicionais</h4>
					</div>
					<div class="modal-body">
						<label>Nome:</label> ${assistente.nome} <br/>
						<label>Email:</label> ${assistente.email} <br/>
						<label>Endereço:</label> ${assistente.endereco} <br/>
						<label>Bairro:</label> ${assistente.bairro} <br/>
						<label>Número:</label> ${assistente.numero} <br/>
						<label>Cidade:</label> ${assistente.cidade} <br/>
						<label>Estado:</label> ${assistente.estado} <br/>
						<label>Sexo:</label> ${assistente.sexo} <br/>
						<label>Data de Nascimento:</label> ${assistente.nascimento} <br/>
						<label>Telefone 1:</label> ${assistente.fone1} <br/>
						<label>Telefone 2:</label> ${assistente.fone2} <br/>
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