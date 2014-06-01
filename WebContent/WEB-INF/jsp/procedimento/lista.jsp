<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="text-align: center; margin-bottom: 20px;">Lista de Procedimentos</h1>
	<table class="table table-striped" style="width: 60%; margin-left: 20%;">
		<thead>
			<tr>
				<th>Nome</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${procedimentoList}" var="procedimento">
				<tr>
					<td>${procedimento.nome}</td>
					<td><a href="formProcedimento?id=${procedimento.id}">Editar</a></td>
					<td><a href="remove?id=${procedimento.id}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>