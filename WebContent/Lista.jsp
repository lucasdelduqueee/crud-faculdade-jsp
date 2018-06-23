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
<title>Lista</title>
</head>
<body>


<font color="blue">
<h1 align="center">Cadastro de Usuario</h1>
</font>

<div align="center">
<a href="index.html">Novo Usuario</a>
</div>

</br>

<table align="center" border="1px" width="80%">
  <tr>
    <th>Login</th>
    <th>Senha</th>
    <th>Perfil</th>
    <th>Email</th>
    <th>Ações</th>
  </tr>

<%
  UsuarioDAO dao = new UsuarioDAO();
  List<Usuario> lista;
  lista = dao.listar();
  
  

for(Usuario registro: lista)
{

%>

<tr>
   <td><%=registro.getLogin() %></td>
   <td><%=registro.getSenha() %></td>
   <td><%=registro.getPerfil() %></td>
   <td><%=registro.getEmail() %></td>
   <td><a href="Atualizar.jsp?login=<%=registro.getLogin() %>">Editar</a>
   <a href="ExclusaoUsuario.jsp?login=<%=registro.getLogin() %>">Excluir</a></td>
 
 </tr>

<%
}
%>

</table>
</body>
</html>