<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Email </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${assistenteList}" var="assistente">
				<tr>
					<td>${assistente.nome}</td>
					<td>${assistente.email}</td>
					<td><a href="edita?id=${assistente.id}">Editar</a></td>
					<td><a href="remove?id=${assistente.id}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>