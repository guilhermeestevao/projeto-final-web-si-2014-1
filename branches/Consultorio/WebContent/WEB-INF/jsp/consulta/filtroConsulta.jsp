<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form class="form-horizontal" role="form" action="filtroConsultaResult" method="post"
		style="width: 90%; margin-left: 5%">
		<div class="form-group">	
			<label for="dia" class="col-sm-1 control-label">Início:</label> 
			<div class="col-sm-2">	
				<input type="date" name="inicio" class="form-control">
			</div>	 
			<label for="dia" class="col-sm-1 control-label">Fim:</label>
			<div class="col-sm-2">	
				<input type="date" name="fim" class="form-control">
			</div>	
		</div>	
		<div class="form-group">
    		<div class="col-sm-offset-1">
				<button type="submit" class="btn btn-success" 
					style="padding-left: 30px; padding-right: 30px;">Procurar</button>
			</div>
		</div>	 
	</form>
	
	<hr/>

</body>
</html>