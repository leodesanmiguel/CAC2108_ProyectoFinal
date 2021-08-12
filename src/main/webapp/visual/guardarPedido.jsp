<%@page import="dao.PedidoDAO"%>
<%@page import="model.Pedido"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang=es>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>

<body>
<%
	String nombre =request.getParameter("firstName");
	String apellido =request.getParameter("lastName");
	String usuario =request.getParameter("username");
	String mail =request.getParameter("email");
	String lugarentrega =request.getParameter("address");
	String localidad = request.getParameter("country");
	String provincia =request.getParameter("state");
	String codpostal =request.getParameter("zip");
	String formadepago =request.getParameter("paymentMethod");
	String tarjtitular =request.getParameter("cc-name");
	String tarjnumero =request.getParameter("cc-number");
	String tarjvto =request.getParameter("cc-expiration");
	String tarjclave =request.getParameter("cc-cvv");
	
	//Creo un objeto pedido para guardarlo en la bas de datos
	//esto es necesario porque trabajo con POO
	Pedido pedido = new Pedido(nombre, apellido, usuario, mail, 
			lugarentrega, Integer.valueOf(localidad), Integer.valueOf(provincia), codpostal, 
			formadepago, tarjtitular, tarjnumero, tarjvto, Integer.valueOf(tarjclave)); 
	
	PedidoDAO pedidoDAO = new PedidoDAO();
	Boolean okGuardado = pedidoDAO.guardarPedido(pedido);
	
	  if (okGuardado) {
	       out.println("El pedido se agregó correctamente <br>");
	   } else {
	       out.println("Error en agregar pedido <br>");
	   }

%>

</body>

</html>