<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>CRO </th>
				<th>Assistente</th>
				<th>Telefone </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dentistaList}" var="dentista">
				<tr>
					<td>${dentista.nome}</td>
					<td>${dentista.cro}</td>
					<td>${dentista.assistente.nome}</td>
					<td>${dentista.assistente.fone1}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>