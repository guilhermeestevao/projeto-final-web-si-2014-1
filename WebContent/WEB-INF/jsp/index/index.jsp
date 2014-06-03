<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-1.3.2.min.js"/>"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<div align="center">
		<img alt="Consultório Online" src="<c:url value="/resources/img/Dentista1.png"/>" 
			width="200px" height="200px" align="top">
	</div>	
	<h1 style="text-align: center; font-size: 45px">Seja bem-vindo ao Consultório Online!</h1>
	<h1 style="text-align: center;">Verifique nossos dentistas disponíveis</h1>
	<table class="table table-striped" style="width: 60%; margin-left: 20%;">
		<thead>
			<tr>
				<th>Nome</th>
				<th>CRO</th>
				<th>Assistente</th>
				<th>Telefone </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dentistaList}" var="dentista">
				<tr>
					<td><a data-toggle="modal" href="#infoAdicionais${dentista.id}">${dentista.nome}</a></td>
					<td>${dentista.cro}</td>
					<td>${dentista.assistente.nome}</td>
					<td>${dentista.assistente.fone1}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<c:forEach items="${dentistaList}" var="dentista">
		<div class="modal fade" id="infoAdicionais${dentista.id}" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">Consultório Online</button>
						<h4 class="modal-title">Informações Adicionais</h4>
					</div>
					<div class="modal-body">
						<label>Nome:</label> ${dentista.nome} <br/>
						<label>Email:</label> ${dentista.email} <br/>
						<label>Assistente:</label> ${dentista.assistente.nome} <br/>
						<label>CRO:</label> ${dentista.cro} <br/>
						<label>Endereço:</label> ${dentista.endereco} <br/>
						<label>Bairro:</label> ${dentista.bairro} <br/>
						<label>Número:</label> ${dentista.numero} <br/>
						<label>Cidade:</label> ${dentista.cidade} <br/>
						<label>Estado:</label> ${dentista.estado} <br/>
						<label>Sexo:</label> ${dentista.sexo} <br/>
						<label>Data de Nascimento:</label> <fmt:formatDate value="${dentista.nascimento}" pattern="dd/MM/yyyy" /> <br/>
						<label>Telefone 1:</label> ${dentista.fone1} <br/>
						<label>Telefone 2:</label> ${dentista.fone2} <br/>
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