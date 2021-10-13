<%@ page language="java"  import = "java.text.*" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Paso canoa</title>

<style>
.boton {
align = center;
}
</style>

</head>

<body >
	<h1 align="center">Ingrese sus Datos</h1>
	<hr>
	<form action="SegundaPantalla.jsp" method="Post">
		<table border="3">
			<tr>
				<td><output>Nombre</output></td>				
				<td><input type="text" name="usuario"></td>			
			</tr>
			<tr>
				<td><output>Horas Trabajadas</output></td>
				<td><input type="number" name="horas_t" step="0.01"><br></td>		
			</tr>
			<tr>
				<td><output>Salario por Hora</output></td>
				<td><input type="number" name="sal_hora" step="0.01"><br></td>	
			</tr>
			<tr>
				<td><output>Otros Descuento B/.</output></td>
				<td><input type="text" name="desc"><br>	</td>
			</tr>			
		</table>
		 		 <input style="center" type=submit value="Enviar" class="boton"> 
		 		<!-- <button type="submit" name="enviar" class="boton" value="">Envia</button> -->
		
	</form>	
</body>
</html>