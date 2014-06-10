<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<h1 style="text-align: center; margin-bottom: 20px;">Lista de
		Consultas</h1>
	<table class="table" style="width: 90%; margin-left: 5%;">
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
				<c:choose>
					<c:when test="${consulta.realizado != true}">
						<tr style="background-color: #ffffff">
							<c:if test="${consulta.dentista.assistente.id == usuarioBean.id}">
								<td>${consulta.cliente.nome}</td>
								<td>${consulta.dentista.nome}</td>
								<td>${consulta.procedimento.nome}</td>
								<td>${consulta.hora}</td>
								<td><fmt:formatDate value="${consulta.dia}"
										pattern="dd/MM/yyyy" /></td>
								<c:if test="${!consulta.realizado}">
									<td><a href="realizar?id=${consulta.id}">Marcar como
											realizada</a></td>
								</c:if>
								<td><a href="formConsulta?id=${consulta.id}">Editar</a></td>
								<td><a data-toggle="modal" href="#excluirModal${consulta.id}">Excluir</a></td>
							</c:if>
						</tr>
					</c:when>
					<c:otherwise>
						<tr style="background-color: #dff0d8">
							<c:if test="${consulta.dentista.assistente.id == usuarioBean.id}">
								<td>${consulta.cliente.nome}</td>
								<td>${consulta.dentista.nome}</td>
								<td>${consulta.procedimento.nome}</td>
								<td>${consulta.hora}</td>
								<td><fmt:formatDate value="${consulta.dia}"
										pattern="dd/MM/yyyy" /></td>
								<c:choose>
									<c:when test="${!consulta.realizado}">
										<td><a href="realizar?id=${consulta.id}">Marcar como
											realizada</a></td>
									</c:when>
									<c:otherwise>
										<td>Consulta realizada</a></td>
									</c:otherwise>
								</c:choose>
								<td><a href="formConsulta?id=${consulta.id}">Editar</a></td>
								<td><a data-toggle="modal" href="#excluirModal${consulta.id}">Excluir</a></td>
							</c:if>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tbody>
		
		<c:forEach items="${consultaList}" var="consulta">
		<div class="modal fade" id="excluirModal${consulta.id}" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">Consultório Online</button>
						<h4 class="modal-title">Excluir Consulta</h4>
					</div>
					<div class="modal-body">
						<h3>Deseja realmente excluir a consulta de ${consulta.cliente.nome}?</h3>
					</div>
					<div class="modal-footer">
						<a href="remove?id=${consulta.id}" class="btn btn-primary">Excluir</a>
						<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</c:forEach>
		
	</table>
</body>
</html>