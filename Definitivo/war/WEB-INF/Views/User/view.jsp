<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="model.entity.User" %>
	<%User user = (User)request.getAttribute("users"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vista del Usuario</title>
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/estilTabla.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
	<header>
        <div class="wrapper">
            
                
                <ul class="nav">
                    
                  	 <li><a href="/users/logout"> Iniciar Cesion</a></li>
                     <li><a href="/users/add"> Registrarse </a>
        </div>
        
        </header>
        <br><br><br><br><br>
</head>
<body>
		<div  align=center width=100%>
			<h1 id="id" name="<%=user.getId() %>">Perfil del Usuario</h1>
			<table id="customers">
				<tr>
					<th>ID</th>
					<td><%=user.getId() %></td>
				</tr>
				<tr>
					<th>IdROL</th>
					<td><%=user.getIdRol() %></td>
				</tr>
				<tr>
					<th>Usuario</th>
					<td><%=user.getNombre() %></td>
				</tr>
				<tr>
					<th>DNI</th>
					<td><%=user.getDNI() %></td>
				</tr>
				<tr>
					<th>Distrito</th>
					<td><%=user.getDistrito() %></td>
				</tr>
				<tr>
					<th>Direccion</th>
					<td><%=user.getDireccion() %></td>
				</tr>
				<tr>
					<th>Telefono</th>
					<td><%=user.getTelefono() %></td>
				</tr>
				<tr>
					<th>Email</th>
					<td><%=user.getEmail() %></td>
				</tr>
				<tr>
					<th>Birth</th>
					<td><%=user.getBirth()  %></td>
				</tr>
				<tr>
					<th>Status</th>
					<td><%=user.isStatus() %></td>
				</tr>
				<tr>
					<th>Genero</th>
					<td><%=user.isGender() %></td>
				</tr>
				<tr>
					<th>Creacion</th>
					<td><%=user.getCreacion() %></td>
				</tr>
			</table>
		</div>

               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
		</body>
		
</html>