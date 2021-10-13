
<%@	page language="java"    contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>calculo   ..</title>
</head>
<body>
	<%!
	
	private double PasarDoble(String dato){
		return (Double.valueOf(dato).doubleValue());
	}		
	private double Cal_Ss(double salario){
		double dato_ss;
		 dato_ss= salario * 9 /100;
		return (dato_ss);
	}
	private double Cal_Se(double salario){
		double dato_se;
		 dato_se= salario * 1.25 /100;
		return (dato_se);
	}
	private double salario_b(double horas, double salario ){
		double sal_b;
		sal_b= horas*salario;
		return (sal_b);
	}
	%>
	
	<%
	    String usuario;
	    double horas_t,sal_hora,desc;
	    double sal_b,ss,se,Sal_neto;
	    usuario=request.getParameter("usuario");
	    horas_t = PasarDoble(request.getParameter("horas_t"));
	    sal_hora = PasarDoble(request.getParameter("sal_hora"));
	    desc= PasarDoble(request.getParameter("desc"));	 
	    sal_b=salario_b(horas_t,sal_hora);
	    ss=Cal_Ss(sal_b);
	    se=Cal_Se(sal_b);
	   	Sal_neto=sal_b-ss-se-desc;
	%>
	
	<table>
		<tr><td>Nombre:</td> <td><%=usuario%></td> </tr>
		<tr><td>SalarioBruto:</td> <td><%=sal_b%></td> </tr>
		<tr><td>SeguroSocial:</td> <td><%=ss%></td> </tr>
		<tr><td>SeguroEducativo:</td> <td><%=se%></td> </tr>
		<br>
		<tr><td>OtrosDescuentos:</td> <td><%=desc%></td> </tr>
		<br>
		<tr><td>SalarioNeto:</td> <td><%=Sal_neto%></td> </tr>
		<br>
	</table>

</body>
</html>