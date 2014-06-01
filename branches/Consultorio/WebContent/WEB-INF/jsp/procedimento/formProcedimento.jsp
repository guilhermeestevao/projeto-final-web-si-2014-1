<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="text-align: center; margin-bottom: 30px;">Adicionar Novo Procedimento</h1>	
		
	<form class="form-horizontal" role="form" action="adiciona" method="post"
		style="width: 90%; margin-left: 5%">
		<input id="nome" type="hidden" name="procedimento.id" value="${procedimento.id}" /> 
		<div class="form-group">	
			<label for="nome" class="col-sm-1 control-label">Nome:</label> 
			<div class="col-sm-3">	
				<input id="nome" type="text" name="procedimento.nome" 
					class="form-control" value="${procedimento.nome}"  /> 
			</div>
			<label for="nome" class="col-sm-3 control-label">Tempo médio para o procedimento:</label> 
			<div class="col-sm-2">
				<input id="nome" type="time" name="procedimento.tempoMedio" 
					class="form-control" value="${procedimento.tempoMedio}"  /> 
			</div>
		</div>
		<div class="form-group">
			<label for="descricao" class="col-sm-1 control-label">Descrição:</label>
     		<div class="col-sm-5">
     			<textarea id="descricao" name="procedimento.descricao" class="form-control" rows="4">
     				${procedimento.descricao}
     			</textarea>
     		</div>	
		</div>
		<div class="form-group">
    		<div class="col-sm-offset-5">
				<button type="submit" class="btn btn-success" 
					style="padding-left: 30px; padding-right: 30px;">Enviar</button>
			</div>
		</div>		
	</form>

</body>
</html>