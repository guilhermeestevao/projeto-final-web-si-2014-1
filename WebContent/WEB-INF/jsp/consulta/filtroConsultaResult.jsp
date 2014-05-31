<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<legend>Datas: </legend>
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
					<c:if test="${consulta.dentista.id == usuarioBean.id}">
						<td>${consulta.cliente.nome}</td>
						<td>${consulta.dentista.nome} </td>
						<td>${consulta.procedimento.nome}</td>
						<td>${consulta.hora}</td>
						<td>${consulta.dia}</td>
					</c:if>		
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>

</body>
</html>