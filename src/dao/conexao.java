package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexao {
	
 public conexao(){
		
		
	}
	
	public static java.sql.Connection getConnection(){
		Connection conn = null;
		
		String status = null;
		
		try{
			
			String driverName="org.postgresql.Driver";
			Class.forName(driverName);
			
			String url = "jdbc:postgresql://localhost:5432/fazenda";
			String username="postgres";
			String password = "system";
			
			conn = DriverManager.getConnection(url,username,password);
			
			
			if(conn!=null){
				
				status=("STATUS----->Conectado com sucesso!");
			}else{
				status=("STATUS----->Não foi possivel realizar a conexão!");
			}
			return conn;
			
			
		}catch(ClassNotFoundException e){
			System.out.println("O driver expecificado nao foi encontrado");
			
			return null;
			
			
		}catch(java.sql.SQLException e){
			
			System.out.println("Não foi possivel conectar");
		    return null;
		
		}
		
		
	}

}



