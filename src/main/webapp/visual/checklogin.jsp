<%@page import="dao.UsuarioDAO"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Chequeo del Usuario</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
    <%
/* Obtiene el par�metro enviado desde la página login.html, 
	llamado inputEmail e inputPassword
*/
	String usuario = request.getParameter("inputEmail"); 
	String contrasenia = request.getParameter("inputPassword");
	String rta = "";

		System.out.println("Validando Usuario en Checklogin.jsp"
			+ "\n Usuario: " + usuario + " <---> " +  request.getParameter("inputEmail")
			+ "\n Pssword: " + contrasenia);
		
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	Boolean usuValido = usuarioDAO.validarUsuarioYPass(usuario, contrasenia);

	if(usuValido.booleanValue()) {
		response.sendRedirect("pedidosUsuario.jsp?usuario=" + usuario);
	} else {
		rta +=  "<div class'container'> ";
		rta +=  "<div class='card text-center'  style='width: 18rem' >" ;
		rta +=  "  <img class='card-img-top'  src='./img/nofunciona.png'   alt='Usuario Incorrecto'>" ;
		rta +=  "  <div class='card-body'>" ;
		rta +=  "    <h5 class='card-title'>Usuario o clave est� INCORRECTa !! 💥</h5>" ;
		rta +=  "    <p class='card-text'> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum, expedita! </p>" ;
		rta +=  "    <a href='../index.html' class='btn btn-primary'>volver al principio</a>" ;
		rta +=  "  </div>" ;
		rta +=  "</div>" ;
		rta +=  "</div>" ;
		out.println(rta);	
	}
	
%>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>