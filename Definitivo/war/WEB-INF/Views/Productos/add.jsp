<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/style.css" >

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
<title>Añadir Producto</title>

	
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
                     <li><a href="/users/logout">Cerrar cesion</a></li>
                    
                </ul>
        </div>
        </header>
        <br><br></br></br>
	<div class="container text-center py-5">
		<h1>Añadir Producto</h1>
	</div>


</head>

<body>


		<div class="jumbotron boxlogin">
			<form action="/productos/add" method="post" id="flogin" name="Formulario" onsubmit="document.forms['Formulario']['Enviar'].disabled=true;">
				<label>Ingrese modelo</label>
				<input type="text" name="modelo" placeholder="" required class="form-control" autofocus> 
				<label>Ingrese marca</label>
				<input type="text" name="marca" placeholder="" required class="form-control"> 
				<label>Ingrese medida</label>
				<input type="text" name="medida" placeholder="" required class="form-control"> 
				<label>Ingrese precio</label>
				<input type="number" step="0.01" name="precio" placeholder="En soles" required class="form-control">
				<label>Ingrese tamaño aro</label>
				<input type="number" step="0.01" name="aro" placeholder="" required class="form-control"> 
				<input type="submit" value="Añadir" name="Enviar">
			</form>
		</div>
		 
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>