<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.Calendar, java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String i = request.getParameter("inicio");
		String f = request.getParameter("fim");

		String[] di = i.split("-");
		String[] df = f.split("-");

		Calendar inicio = Calendar.getInstance();
		Calendar fim = Calendar.getInstance();

		inicio.set(Calendar.DAY_OF_MONTH, Integer.parseInt(di[2]));
		inicio.set(Calendar.MONTH, Integer.parseInt(di[1]) - 1);
		inicio.set(Calendar.YEAR, Integer.parseInt(di[0]));

		fim.set(Calendar.DAY_OF_MONTH, Integer.parseInt(df[2]));
		fim.set(Calendar.MONTH, Integer.parseInt(df[1]) - 1);
		fim.set(Calendar.YEAR, Integer.parseInt(df[0]));

		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
	%>

	<h1 style="text-align: center; margin-bottom: 20px;">
		Datas: De
		<%=formato.format(inicio.getTime())%>
		até
		<%=formato.format(fim.getTime())%>
	</h1>
	<table class="table"
		style="width: 80%; margin-left: 10%;">
		<thead>
			<tr>
				<th>Paciente</th>
				<th>Dentista</th>
				<th>Procedimento</th>
				<th>Horário da consulta</th>
				<th>Dia da consulta</th>
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
								<td><fmt:formatDate value="${consulta.dia}"
										pattern="dd/MM/yyyy" /></td>
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
								<td><fmt:formatDate value="${consulta.dia}"
										pattern="dd/MM/yyyy" /></td>
								<td>Consulta realizada</td>		
							</c:if>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tbody>
	</table>
</body>
</body>
</html>