<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
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