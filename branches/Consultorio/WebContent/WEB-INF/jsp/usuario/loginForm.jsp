<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="jumbotron"
		style="width: 40%; margin-left: 30%; border-radius: 20px; -moz-border-radius: 20px; -webkit-border-radius: 20px; margin-bottom: 1%;">
		<h1 style="margin-left: 15%; font-size: 45px;">Efetue o Login</h1>
		<br />
		<form class="form-horizontal" role="form"
			action="<c:url value="/usuario/login"/>" method="post" style="margin-left: 10%;">
			<div class="form-group">
				<label for="email" class="col-sm-2 control-label">Email:</label>
				<div class="col-sm-8">
					<input id="email" type="text" name="email" class="form-control"
						placeholder="Email" />
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-2 control-label">Senha:</label>
				<div class="col-sm-8">
					<input id="senha" type="password" name="senha" class="form-control"
						placeholder="Senha" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10" style="margin-top: 20px;">
					<button type="submit" class="btn btn-primary"
						style="padding-left: 30px; padding-right: 30px;">Login</button>
				</div>
			</div>
		</form>
		<c:forEach var="error" items="${errors}">
			<h3><span class="label label-warning" style="margin-left: 6%;">${error.message}</span></h3>
		</c:forEach>
		</div>
	</div>


</body>
</html>