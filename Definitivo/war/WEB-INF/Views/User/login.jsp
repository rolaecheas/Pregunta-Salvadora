<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.google.appengine.api.users.User" %>
    <%User user = (User) request.getAttribute("user"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/estilTablaLab08.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
	<header>
        <div class="wrapper">
            
               <ul class="nav">
                <li><a href="/users"> Usuarios Registrados </a>
                       
                    </li>
                  	 <li><a href="/productos"> Productos </a>
                       <ul>
                            <li><a id="add"href="/productos/add" >Añadir Producto</a></li>
                             <li><a id="add"href="/productos">Lista Producto</a></li>
                        </ul>
                     <li><a href="/users/logout">Cerrar Cesion</a></li>
                    	
                </ul>
        </div>
        
        </header>
        <br><br><br><br><br>
</head>
<body>
<div align=center width=100%>
        <h1>Bienvenido    <%=user.getEmail()   %></h1>
        </div>
    <div align=center width=100%>
             
    <h1>GITHUB
       <a title="gitHub" href="https://github.com/diegoflores20173372/lab09-20173372?files=1"><img src="/css/icoGit.jpg" width="100px" /></a></h1></div> 
         
</body>
</html>