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
<title>Insert title here</title>
</head>
<body>

<font color="blue">
<h1 align="center">Cadastro de Usuario</h1>
</font>



<div align="center">
<a href="index.html">Novo Usuario</a>
</br>
<a href="Lista.jsp">Listar</a>
</div>

<%
String msg = null;
if(request.getParameter("login")==null)
{
	
		msg = "Usuario nao enviado!";
		
	}
else 
{
	UsuarioDAO dao = new UsuarioDAO();
	Usuario usuario = new Usuario();
	usuario.setLogin(request.getParameter("login"));
	Boolean ret = dao.Excluir(usuario);
	if(ret==true)
	{
		msg = "Registro Excluido com sucesso!";
	}
	else
	{
		msg = "N�o foi possivel excluir!";
	}
	
}



%>

<h3 align="center"><%=msg%></h3>

</body>
</html>