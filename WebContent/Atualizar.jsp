<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import = "dao.conexao" %>
     <%@ page import = "dao.UsuarioDAO" %>
     <%@ page import = "modelo.Usuario" %>
     <%@ page import = "java.util.List" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Atualizar</title>
</head>
<body>


<%
Usuario usuario = new Usuario();
UsuarioDAO dao = new UsuarioDAO();

usuario.setLogin(request.getParameter("login"));

usuario = dao.buscar(usuario);


%>



<div align="center">
<font color="blue">
<h1 align="center">Cadastro de Usuario</h1>
</font>


<a href="index.html">Novo Usuario</a>
</br>
<a href="Lista.jsp">Listar</a>
</div>




<div>
<form action="usuario.jsp" method="post">

<div align="center">
  Login:<br>
  <input type="text" name="login" value="<%=usuario.getLogin()%>"></br>
  
  Senha:<br>
  <input type="text" name="senha" value="<%=usuario.getSenha()%>"></br>
  
  Prefil:<br>
  <input type="text" name="perfil" value="<%=usuario.getPerfil()%>"></br>
  
  Email:<br>
  <input type="text" name="email" value="<%=usuario.getEmail()%>"></br>
  
  <input type="submit" value="Salvar Atualização">


</form>

</div>

</body>
</html>