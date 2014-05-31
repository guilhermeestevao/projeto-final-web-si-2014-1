<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Paciente</th>
				<th>Dentista</th>
				<th>Procedimento</th>
				<th>Horário da consulta</th>
				<th>Dia da consulta</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${consultaList}" var="consulta">
				<tr>
					<c:if test="${consulta.dentista.assistente.id == usuarioBean.id}">
						<td>${consulta.cliente.nome}</td>
						<td>${consulta.dentista.nome}</td>
						<td>${consulta.procedimento.nome}</td>
						<td>${consulta.hora}</td>
						<td>${consulta.dia}</td>
						<td><a href="formConsulta?id=${consulta.id}">Editar</a></td>
						<td><a href="remove?id=${consulta.id}">Excluir</a></td>
					</c:if>			
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>