<!doctype html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="dao.PedidoDAO"%>
<html lang="es">

<head>
    <title>Listado de Pedidos de Usuario</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class="text-center bg-light">
<% 
	String usuarioValido = request.getParameter("usuario"); 
	System.out.println("Usuario disponible:  " + usuarioValido );
	PedidoDAO pedidoDAO = new PedidoDAO();
	List<Pedido> listPedidos =   pedidoDAO.pedidosUsuario(usuarioValido);
%>

    <div class="container">
        <div class="py-4 text-center">
            <img class="d-block mx-auto mb-4" 
            	src="./img/logo.jpg" alt="Logo caba" width="72" height="72">
            <h2>Pedidos</h2>
            <p class="lead">Listado de los Pedidos del Usuario</p>
        </div>
		<!-- Primera Parte de la tabla: Datos del USUARIO-->
		<div class="table-responsive-sm pb-4">
	        <table class="table-striped ">
	            <thead class="thead-dark">
	                <tr class="table-success">
	                    <th colspan="2" scope="col">Datos del Usuario</th>
	                </tr>
	            </thead>
	            <tbody class="tbody-dark">
	                <tr><th scope="row">Nombre y Apellido: </th>
		                <td >
		                  <%= 
		                  	listPedidos.get(0).getNombre() + " " +
		                  	listPedidos.get(0).getApellido()
		                  %>
		                </td>
	               </tr>
	                <tr><th scope="row">Domicilio</th>
		                <td >
			                Calle 1234, 
		                  <%= 
		                  	"San Cucurucu (" 
		                  		+ listPedidos.get(0).getCodPostal() 
		                  		+ ")"  
		                  %>
							 - Prov. Buenas Tardes
		                </td>

	               </tr>
		             <tr> <th scope="row">Correo </th>  
		               <td> 
		                  <%= 
		                  	listPedidos.get(0).getMail() 
		                  %>
		                  	
		               </td>
	               </tr>                  
	            </tbody>
	        </table>
		</div>
		<!-- Segunda Parte de la tabla: Datos del PEDIDO -->
		<div class="table-responsive-sm pb-4">
	        <table class="table table-hover table-sm">
	            <thead class="thead-dark">
	                <tr>
                    <th scope="col">#ID</th>
                    <th scope="col">Lugar de Entrega</th>
                    <th scope="col">Loc.</th>
                    <th scope="col">Prov.</th>
                    <th scope="col">CP</th>
                    <th scope="col">Forma de Pago</th>
                    <th scope="col">Titular</th>
                    <th scope="col">Nro.</th>
	                </tr>
	            </thead>
	            <tbody>
	
	
	<%	      	
		for (int i=0;i<listPedidos.size();i++)
		{
			
			out.println("<tr>");
			out.println("<td>" + listPedidos.get(i).getIdPedido() + "</td>");
			out.println("<td>" + listPedidos.get(i).getLugarEntrega() + "</td>");
			out.println("<td>" + listPedidos.get(i).getLocalidad() + "</td>");
			out.println("<td>" + listPedidos.get(i).getProvincia() + "</td>");
			out.println("<td>" + listPedidos.get(i).getCodPostal()+ "</td>");
			out.println("<td>" + listPedidos.get(i).getFormaDePago() + "</td>");
			out.println("<td>" + listPedidos.get(i).getTarjTitular() + "</td>");
			out.println("<td>" + listPedidos.get(i).getTarjNumero()+ "</td>");
			out.println("</tr>");
		}				
		      	
	%>
	
	            </tbody>
	        </table>
	        
<%
String rta ="";
rta +=  "<div class='card text-center'  style='width: 18rem' >" ;
rta +=  "  <div class='card-body'>" ;
rta +=  "    <a href='../index.html' class='btn btn-primary'>volver al principio</a>" ;
rta +=  "  </div>" ;
rta +=  "</div>" ;
out.println(rta);	

%>	        
	        
		</div>
        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1">&copy; 2017-2020 - 2021 Codo a Codo</p>
            <p class="mb-1">&copy; 2021 Leonardo Martinez</p>
        </footer>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>