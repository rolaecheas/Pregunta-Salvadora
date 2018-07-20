<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.List"%>
<%@ page import="model.entity.User"%>
<%List<User> user = (List<User>)request.getAttribute("users");%>
<!DOCTYPE html>
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
<title>Lista Usuarios</title>
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/estilTabla.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
<header>
        <div class="wrapper">
            
                <ul class="nav">
                	 <li><a href="/users/logout"> Iniciar Cesion</a></li>
                     <li><a href="/users/add"> Registrarse </a>
                     
                </ul>
        </div>
    
        </header>
<br><br><br><br>
</head>
<body>
     
		
		<div align=center width=100%>
			<% if (user.isEmpty()){ %>
				<h1>No hay Usuarios</h1>
			<%} else { %>
				<h1>Usuarios Registrados</h1>
				<table id="customers">
					<tr >
					    <th>ID</th>  
						<th>EMAIL</th>
						<th>ROL</th>
						<th>BIRTH</th>
						<th>GENDER</th>
						<th>STATUS</th>
						<th>CREATION</th>
						<th>FUNCTION</th>
					</tr>
				<% for (User us: user){%>
				<tr>
						<td><%=us.getId()%></td>
						<td><%=us.getEmail() %></td>
						<td><%=us.getIdRol() %></td>
						<td><%=us.getBirth() %></td>
						<td><%=us.isGender() %></td>
						<td><%=us.isStatus() %></td>
						<td><%=us.getCreacion() %></td>
					  <td >
                	<a href="/users/view?id=<%=us.getId() %>">Ver</a>
                	<a href="/users/edit?id=<%=us.getId() %>">Editar</a>
                	<a href="/users/delete?id=<%=us.getId() %>">Borrar</a>
                </td>     
					</tr>
				<%} %>
				</table>
			<%} %>
		</div>
	 
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>