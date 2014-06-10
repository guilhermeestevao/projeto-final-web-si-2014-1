<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar, java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Date date = new Date();
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
	%>

	<h1 style="text-align: center; margin-bottom: 20px;">
		Data:
		<%=formato.format(date)%>
	</h1>
	<table class="table"
		style="width: 60%; margin-left: 20%;">
		<thead>
			<tr>
				<th>Paciente</th>
				<th>Dentista</th>
				<th>Procedimento</th>
				<th>Horário da consulta</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${consultaList}" var="consulta">
				<c:choose>
					<c:when test="${consulta.realizado != true}">
						<tr style="background-color: #ffffff">
							<c:if test="${consulta.dentista.id == usuarioBean.id}">
								<td>${consulta.cliente.nome}</td>
								<td>${consulta.dentista.nome}</td>
								<td>${consulta.procedimento.nome}</td>
								<td>${consulta.hora}</td>
								<td>Consulta não realizada</td>
							</c:if>
						</tr>
					</c:when>
					<c:otherwise>
						<tr style="background-color: #dff0d8">
						<c:if test="${consulta.dentista.id == usuarioBean.id}">
								<td>${consulta.cliente.nome}</td>
								<td>${consulta.dentista.nome}</td>
								<td>${consulta.procedimento.nome}</td>
								<td>${consulta.hora}</td>
								<td>Consulta realizada</td>
						</c:if>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>