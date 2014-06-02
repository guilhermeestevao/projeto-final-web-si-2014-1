<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center; margin-bottom: 20px;">Lista de Consultas</h1>
	<table class="table table-striped" style="width: 90%; margin-left: 5%;">
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
						<td>${consulta.dentista.nome} </td>
						<td>${consulta.procedimento.nome}</td>
						<td>${consulta.hora}</td>
						<td><fmt:formatDate value="${consulta.dia}" pattern="dd/MM/yyyy" /></td>
						<c:if test="${!consulta.realizado}">
							<td><a href="realizar?id=${consulta.id}">Marcar como realizada</a></td>
						</c:if>
						<td><a href="formConsulta?id=${consulta.id}">Editar</a></td>
						<td><a href="remove?id=${consulta.id}">Excluir</a></td>
					</c:if>		
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>