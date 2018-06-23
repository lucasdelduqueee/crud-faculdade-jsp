package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import modelo.Usuario;


public class UsuarioDAO {

public Connection coon;

	public UsuarioDAO(){
		new conexao();
		 this.coon = conexao.getConnection();
	}
	
	
	public boolean adicionar(Usuario usuario){
		
	
		String query = "insert into usuario (login,senha,perfil,email)values(?,?,?,?)";
		Boolean retorno = false;
		try{
			
			PreparedStatement ps = coon.prepareStatement(query);
		
			ps.setString(1, usuario.getLogin());
		    ps.setString(2, usuario.getSenha());
		    ps.setString(3, usuario.getPerfil());
		    ps.setString(4, usuario.getEmail());
		
		    if(ps.executeUpdate()>0)
		    {
		    	retorno = true;
		    }
		    
		}catch(java.sql.SQLException e){
			throw new RuntimeException(e);
		    // retorno = false;
		
		}
		return retorno;
	  }
	
	public List<Usuario> listar()
	{
	String query = "SELECT * FROM usuario";
		List<Usuario> retorno = new ArrayList<Usuario>();
		
		
		try{
			PreparedStatement ps = coon.prepareStatement(query);
			
		 ResultSet res = ps.executeQuery();
		 while(res.next())
		 {
			 Usuario item = new Usuario();
			 item.setLogin(res.getString("login"));
			 item.setSenha(res.getString("senha"));
			 item.setEmail(res.getString("email"));
			 item.setPerfil(res.getString("perfil"));
			 
			 retorno.add(item);
		 }
		   
		    
		}catch(java.sql.SQLException e){
			throw new RuntimeException(e);
		}
		
		return retorno;
	  }
	
	
	public boolean Atualizar(Usuario usuario){
		
		
		String query = "UPDATE usuario set senha=?,perfil=?,email=? where login=?";
		Boolean retorno = false;
		try{
			
			PreparedStatement ps = coon.prepareStatement(query);
		
			
		    ps.setString(1, usuario.getSenha());
		    ps.setString(2, usuario.getPerfil());
		    ps.setString(3, usuario.getEmail());
		    ps.setString(4, usuario.getLogin());
		    if(ps.executeUpdate()>0)
		    {
		    	retorno = true;
		    }
		    
		}catch(java.sql.SQLException e){
			throw new RuntimeException(e);
		    // retorno = false;
		
		}
		return retorno;
	  }
	
	public boolean Excluir(Usuario usuario){
		
		
		String query = "DELETE from usuario where login=?";
		Boolean retorno = false;
		try{
			
			PreparedStatement ps = coon.prepareStatement(query);
		
			
		   
		    ps.setString(1, usuario.getLogin());
		    if(ps.executeUpdate()>0)
		    {
		    	retorno = true;
		    }
		    
		}catch(java.sql.SQLException e){
			throw new RuntimeException(e);
		    // retorno = false;
		
		}
		return retorno;
	  }
	
	public Usuario buscar(Usuario usuario)
	{
	String query = "SELECT * FROM usuario where login=?";
		Usuario retorno = null;
		
		
		try{
			PreparedStatement ps = coon.prepareStatement(query);
			ps.setString(1, usuario.getLogin());
		 ResultSet res = ps.executeQuery();
		 if(res.next())
		 {
			 retorno = new Usuario();
			 retorno.setLogin(res.getString("login"));
			 retorno.setSenha(res.getString("senha"));
			 retorno.setEmail(res.getString("email"));
			 retorno.setPerfil(res.getString("perfil"));
			 
			
		 }
		   
		    
		}catch(java.sql.SQLException e){
			throw new RuntimeException(e);
		}
		
		return retorno;
	  }

	
	
	}
	
	
	
	

	