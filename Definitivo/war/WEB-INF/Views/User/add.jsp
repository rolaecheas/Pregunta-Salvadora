<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.List"%>
<%@ page import="model.entity.Rol"%>
<%List<Rol> roles = (List<Rol>)request.getAttribute("roles");

%>
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
<title>Registro</title>
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
<header>

        <div class="wrapper">
            
                <ul class="nav">
                   <li><a href="/users/logout"> Iniciar Cesion</a></li>
                   
                </ul>
        </div>
    
        </header>
<br><br><br><br>
</head>
<body>
     
		
		
				<div class="container text-center py-5">
		<h1>Registrarse</h1>
	</div>

		 <% if (roles.isEmpty()){ %>
				
				<h1><center>Lista de roles vacia, ingrese uno porfavor: <a id="add"href="/roles/add">AÑADIR</a></center></h1>
			<%} else { %>

				
<div class="jumbotron boxlogin">
		<form action="/users/add" method="post" id="flogin" name="Formulario" onsubmit="document.forms['Formulario']['Enviar'].disabled=true;">
			<label>Ingrese su Nombre</label>
			<input type="text" name="nombre" placeholder="Ingrese su nombre" required class="form-control" autofocus><br>
			<label>Ingrese DNI</label>
			<input type="text" name="dni" placeholder="Ingrese su DNI" required class="form-control" ><br>
			<label>Ingrese Dirección</label>
			<input type="text" name="direccion" placeholder="Ingrese su direccion" required class="form-control" ><br>
			<label>Ingrese Distrito</label>
			<input type="text" name="distrito" placeholder="Ingrese su distrito" required class="form-control" ><br>
			<label>Ingrese Telefono</label>
			<input type="text" name="telefono" placeholder="Ingrese su telefono" required class="form-control" ><br>
			<label>Ingrese email</label>
			<input type="email" name="email"   placeholder="Ingrese su email" required class="form-control"> <br>
			<label>Ingrese Contraseña</label>
			<input type="password" name="contraseña" placeholder="Ingrese Contraseña" required class="form-control" ><br>
			<label>Ingrese su fecha de Nacimiento</label>
			<br> <input type="date" name="date" min="1900-01-01" max="2005-01-01"  	required class="form-control" ><br>
			 <label >Selecciones su genero</label><br>
			 <input type="radio"  name="gender" id="hombre" value="true" checked> 
			 <label for="hombre">Masculino</label> 
			 <input type="radio" name="gender" id="mujer" value="false"> 
			 <label for="mujer">Femenino</label><br>
			 <br> <select name="role" class="form-control" >
			 <% for (Rol role: roles){%>
			 
			 <option value="<%=role.getId()%>"><%=role.getNombre() %> </option>
			 <%} %>
			 	</select> 
			  <input type="submit" value="Añadir" name="Enviar">
		</form>
			 	
	</div>
		
<%} %>
			
	 
          <script>
	(function(){
			var formulario = document.getElementsByName('Formulario')[0],
				elementos = formulario.elements,
				boton = document.getElementById('submit');
			
			var validarNombre = function(e){
				if(formulario.email.value.length < 1){
					alert("Llene el campo Rol.");
					e.preventDefault();
				}
				else if(isNaN(formulario.email.value) == false){
					alert("El campo ROL tiene caracter/es no válidos.");
					e.preventDefault();
				}
				else{
					bloqueoBoton(e);
				}
			}
			var bloqueoBoton = function(e){
				document.forms['Formulario']['Enviar'].disabled=true;
			}
			var validar = function(e){
				validarNombre(e);
			}
			formulario.addEventListener("submit",validar);
		}())
	</script>
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>