<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="model.entity.Producto" %>

	<%Producto produc = (Producto)request.getAttribute("producto"); %>
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
<link rel="stylesheet" type="text/css" href="/css/editar.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti" rel="stylesheet">
<title>Editar Producto</title>
	
<header>
        <div class="wrapper">
            
                
               <ul class="nav">
                   
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
        <br><br><br>
	<div class="container text-center py-5">
		<h1>Editar Producto</h1>
	</div>

	</head>
<body>

		<div class="jumbotron boxlogin">
			<form action="/productos/edit" method="post">
				
				<label>Edite su modelo</label>
			    <input type="hidden" name="id" value="<%=produc.getId() %>">
				<input type="text" name="modelo" placeholder="Edita tu modelo" value="<%=produc.getModelo() %>" required class="form-control"> 
				<label>Edite la marca</label>
				<input type="text" name="marca" placeholder="Edita la marca" value="<%=produc.getMarca() %>" required class="form-control"> 
				<label>Edite medida</label>
				<input type="text" name="medida" placeholder="Edita medida" value="<%=produc.getMedida() %>" required class="form-control">
				<label>Edite su precio</label>
				<input type="number" step="0.01" name="precio" placeholder="Edita el precio" value="<%=produc.getPrecio() %>" required class="form-control">
				<label>Edite su tamaño aro</label>
				<input type="number" name="aro" placeholder="Edita tu tamaño" value="<%=produc.getAro() %>" required class="form-control">
				<input type="submit" value="Editar">
			</form>
		</div>
		 
          
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	</body>
</html>