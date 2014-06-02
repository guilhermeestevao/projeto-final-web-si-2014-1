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

	<h1 style="text-align: center; margin-bottom: 20px;">Lista de Procedimentos</h1>
	<table class="table table-striped" style="width: 60%; margin-left: 20%;">
		<thead>
			<tr>
				<th>Procedimento</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${procedimentoList}" var="procedimento">
				<tr>
					<td><a data-toggle="modal" href="#infoAdicionais${procedimento.id}">${procedimento.nome}</a></td>
					<td><a href="formProcedimento?id=${procedimento.id}">Editar</a></td>
					<td><a href="remove?id=${procedimento.id}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<c:forEach items="${procedimentoList}" var="procedimento">
		<div class="modal fade" id="infoAdicionais${procedimento.id}" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">Consultório Online</button>
						<h4 class="modal-title">Informações Adicionais</h4>
					</div>
					<div class="modal-body">
						<label>Nome:</label> ${procedimento.nome} <br/>
						<label>Descrição:</label> ${procedimento.descricao} <br/>
						<label>Tempo Médio:</label> ${procedimento.tempoMedio} h<br/>
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