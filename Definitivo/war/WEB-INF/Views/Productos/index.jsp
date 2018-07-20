<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.List"%>
<%@ page import="controllers.Productos.ProductosControllerIndex"%>
<%@ page import="model.entity.Producto"%>
<%List<Producto> productos = (List<Producto>)request.getAttribute("producto");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimun-scale=1.0">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Productos</title>
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/estilTabla.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
<header>
        <div class="wrapper">
            
               
               <ul class="nav">
                    <li><a href="/ballots"> Boletas </a>
                       <ul>
                            <li><a id="add"href="/ballots/add" >Añadir Boleta</a></li>
                             <li><a id="add"href="/ballots">Lista Boletas</a></li>
                        </ul>
                    </li>
                     <li><a href="/productos"> Productos </a>
                       <ul>
                            <li><a id="add"href="/productos/add" >Añadir Producto</a></li>
                             <li><a id="add"href="/productos">Lista Producto</a></li>
                        </ul>
                    </li>
                   
                      <li><a href="/users/login"> Principal</a></li>
                     <li><a href="/users/logout">Cerrar cesion</a></li>>
                    
                </ul>
        </div>
        </header>
<br><br><br><br>
</head>
<body>
     
		
		<div align=center width=100%>
			<% if (productos.isEmpty()){ %>
				<h1>No hay productos</h1>
			<%} else { %>
				<h1>Lista de productos</h1>
				<table id="customers">
					<tr >
					    <th>ID</th>  
						<th>MODELO</th>
						<th>MARCA</th>
						<th>MEDIDA</th>
						<th>PRECIO</th>
						<th>ARO</th>
						<th>FUNCIONES</th>
					</tr>
				<% for (Producto us: productos){%>
				<tr>
						<td><%=us.getId()%></td>
						<td><%=us.getModelo() %></td>
						<td><%=us.getMarca() %></td>
						<td><%=us.getMedida() %></td>
						<td><%=us.getPrecio() %></td>
						<td><%=us.getAro() %></td>
					  <td >
                	<a href="/productos/view?id=<%=us.getId() %>">Ver</a>
                	<a href="/productos/edit?id=<%=us.getId() %>">Editar</a>
                	<a href="/productos/delete?id=<%=us.getId() %>">Borrar</a>
                	<a href="/ballots/buy?id=<%=us.getId() %>">Comprar</a>
                </td>     
					</tr>
				<%} %>
				</table>
			<%} %>
		</div>

	 <footer id="pie">Valeria Nicoll Calderon Rodriguez-Diego Flores Camargo - Rodrigo Oleachea Sanchez
	 <br><a title="facebook" href="https://web.facebook.com/pg/Llantas-DJ-486510835126807/about/?ref=page_internal"><img src="/css/icoface.png" width="20px" /></a>
         <a title="Whatsapp" href="https://web.whatsapp.com/" ><img src="/css/icoWhats.png" width="20px" /></a>980702144 <a title="Gmail" href="https://mail.google.com/mail/" ><img src="/css/icoGmail.png" width="20px" /></a>jcamarguito@hotmail.com
          </footer>
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>