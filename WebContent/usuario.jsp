<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "dao.conexao" %>
     <%@ page import = "dao.UsuarioDAO" %>
     <%@ page import = "modelo.Usuario" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>

<div align="center">
<font color="blue">
<h1 align="center">Cadastro de Usuario</h1>
</font>


<a href="index.html">Novo Usuario</a>
</br>
<a href="Lista.jsp">Listar</a>
</div>

<%
Usuario usuario = new Usuario();
usuario.setLogin(request.getParameter("login"));
usuario.setEmail(request.getParameter("email"));
usuario.setPerfil(request.getParameter("perfil"));
usuario.setSenha(request.getParameter("senha"));

UsuarioDAO dao = new UsuarioDAO();
Boolean b = dao.adicionar(usuario);
String msg;
if(b==true)
{
	msg = "Registro cadastrado com sucesso";
}
else
{
	
	msg = "Erro ao cadastrar";
}
%>

<div align="center">
<%=msg %>
</div>




</body>
</html>