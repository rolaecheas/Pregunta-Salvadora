<%@page import="model.entity.Ballot"%>
<%
	Ballot a = (Ballot) request.getAttribute("ballot");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Editar Boleta</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimun-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">

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
<div class="container text-center py-5">
	<h1>Editar Boleta</h1>
</div>

</head>
<body>
	<div class="jumbotron boxlogin">
		<form method="post" action="/ballots/edit?id=<%=a.getId()%>">
			<label>Nombre Cliente: </label><br> 
			<input class="form-control" type="text" name="Usuario" value="<%=a.getCliente() %>" autofocus required><br /> 
			<label>DNI: </label> <br>
			<input class="form-control" type="number" name="dni" placeholder="N� DNI" value="<%=a.getDni() %>" required><br /> 
			<label>Direcci�n: </label> <br>
			<input class="form-control" type="text" name="direccion" placeholder="Su direcci�n..." value="<%=a.getDireccion() %>" required> <br /> 
			<label>Distrito: </label> <br>
			<input class="form-control" type="text" name="distrito" placeholder="Su distrito..." value="<%=a.getDistrito() %>" required> 
			<label>Tel�fono: </label> <br>
			<input class="form-control" type="number" name="telefono" placeholder="Su Tel�fono" value="<%=a.getTelefono() %>" required><br /> 
			<label>Cantidad: </label> <br>
			<input class="form-control" type="number" name="cantidad" placeholder="N�" required> 
			<label>N� Boleta: </label> <br>
			<input class="form-control" type="text" readonly value="<%=a.getNBoleta() %>"><br /> 
			<label>Llanta: </label> <br>
			<input class="form-control" type="text" name="llanta" value="<%=a.getLlanta() %>" required> <br /> 
			<label>PrecioUnitario: </label><br> 
			<input class="form-control" type="text" name="precioUnit" value="<%=a.getPrecioUnitario() %>" required> 
			<input name="Enviar" type="submit" value="Guardar Boleta">
		</form>
	</div>
	
	<script>
				(function(){
					
					var formulario = document.getElementsByName('Reci')[0],
						elementos = formulario.elements,
						boton = document.getElementById('submit');
					
					var validarCliente = function(e){
						if(formulario.Usuario.value == ""){
							alert("Llene el campo usuario");
							e.preventDefault();
						}
						else if(isNaN(formulario.Usuario.value)===false){
							alert("El campo USUARIO solo debe contener letras");
							e.preventDefault();
						}
					}
					var validarDireccion = function(e){
						if(formulario.direccion.value == ""){
							alert("Llene el campo direccion");
							e.preventDefault();
						}
					}
					var validarDistrito = function(e){
						if(formulario.distrito.value == ""){
							alert("Llene el campo distrito");
							e.preventDefault();
						}
						else if(isNaN(formulario.distrito.value)){
							alert("Complete el campo DISTRITO solo con letras");
							e.preventDefault();
						}
					var validarTelefono = function(e){
						if(formulario.telefono.value == ""){
							alert("Llene el campo telefono");
							e.preventDefault();
						}
						else if(isNaN(formulario.telefono.value)){
							alert("Compelete el campo TELEFONO solo con n�meros");
							e.preventDefault();
						}
						else if(formulario.telefono.value.length < 9 || formulario.celular.value.length > 9){
							alert("El campo telefono debe contener un n�mero de 9 digitos");
							e.preventDefault();
						}
					}

					}
					var validarCantidad = function(e){
						if(formulario.cantidad.value == ""){
							alert("Llene el campo cantidad");
							e.preventDefault();
						}
					}
					var bloqueoBoton = function(e){
						document.forms['Reci']['Enviar'].disabled=true;
					}
					var validar = function(e){
						validarCliente(e);
						validarDNI(e);
						validarDistrito(e);
						validarDireccion(e);
						validarTelefono(e);
						validarCantidad(e);
						bloqueoBoton(e);
					}
					
					formulario.addEventListener("submit",validar);
					
					
				}())	
			</script>
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






