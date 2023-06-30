/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

import java.sql.*;  
/**
 *
 * @author BCMedia
 */
public class dbkon {
    public static Connection getConection(){  
	Connection con=null;  
	try{  
	    Class.forName("com.mysql.cj.jdbc.Driver");  
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/koperasi","artha","t35T123@#$");

	}catch(Exception e){System.out.println(e);}  
	return con;  
    }
    
}
