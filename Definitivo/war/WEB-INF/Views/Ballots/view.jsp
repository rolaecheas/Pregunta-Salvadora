<%@page import="model.entity.Ballot"%>
<%
	Ballot a = (Ballot) request.getAttribute("ballot");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/estilTabla.css">
<title>Vista de la Boleta</title>
<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
<header>
<div class="wrapper">

	<li><a href="/ballots"> Boletas </a>
                       <ul>
                            <li><a id="add"href="/ballots/add" >A�adir Boleta</a></li>
                             <li><a id="add"href="/ballots">Lista Boletas</a></li>
                        </ul>
                    </li>
                     <li><a href="/productos"> Productos </a>
                       <ul>
                            <li><a id="add"href="/productos/add" >A�adir Producto</a></li>
                             <li><a id="add"href="/productos">Lista Producto</a></li>
                        </ul>
                    </li>
                   
                      <li><a href="/users/login"> Principal</a></li>
                     <li><a href="/users/logout">Cerrar cesion</a></li>

	</ul>
</div>

</header>
<br>
<br>
<br>
<br>
<br>
</head>
<body>
	<div align=center width=100%>
		<h1 id="id" name="<%=a.getId() %>">Vista de la Boleta</h1>
		<table id="customers">
			<tr>
				<th>ID</th>
				<td><%=a.getId() %></td>
			</tr>
			<tr>
				<th>Cliente</th>
				<td><%=a.getCliente() %></td>
			</tr>
			<tr>
				<th>DNI</th>
				<td><%=a.getDni() %></td>
			</tr>
			<tr>
				<th>Llanta</th>
				<td><%=a.getLlanta() %></td>
			</tr>
			<tr>
				<th>Direcci�n</th>
				<td><%=a.getDireccion() %> <%=a.getDistrito() %></td>
			</tr>
			<tr>
				<th>Tel�fono</th>
				<td><%=a.getTelefono() %></td>
			</tr>
			<tr>
				<th>Cantidad</th>
				<td><%=a.getCantidad() %></td>
			</tr>
			<tr>
				<th>N� de Boleta</th>
				<td><%=a.getNBoleta() %></td>
			</tr>
			<tr>
				<th>Precio Llanta</th>
				<td><%=a.getPrecioUnitario() %></td>
			</tr>
			<tr>
				<th>Precio Total</th>
				<td><%=a.getPrecioFinal() %></td>
			</tr>
			
		</table>
	</div>
	<footer id="pie">Valeria Nicoll Calderon Rodriguez-Diego Flores Camargo - Rodrigo Oleachea Sanchez
	 <br><a title="facebook" href="https://web.facebook.com/pg/Llantas-DJ-486510835126807/about/?ref=page_internal"><img src="/css/icoface.png" width="20px" /></a>
         <a title="Whatsapp" href="https://web.whatsapp.com/" ><img src="/css/icoWhats.png" width="20px" /></a>980702144 <a title="Gmail" href="https://mail.google.com/mail/" ><img src="/css/icoGmail.png" width="20px" /></a>jcamarguito@hotmail.com
          </footer>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>
</body>

</html>