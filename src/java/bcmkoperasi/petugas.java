/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import static bcmkoperasi.dbkon.getConection;
import bcmkoperasi.fungsi;

/**
 *
 * @author BCMedia
 */
public class petugas extends dbkon {
    public static boolean ceklogin(String u, String p){
	
	tbpetugas petugas = new tbpetugas();
	fungsi f = new fungsi();
	boolean hsl = false;
	try{  
	    Connection con = getConection();  
	    PreparedStatement ps = con.prepareStatement("select idpetugas from tb_petugas WHERE username=? AND keyaccess=?");  
	    ps.setString(1,u.replaceAll(" ",""));
	    ps.setString(2,f.md5(p.replaceAll(" ","")));
	    ResultSet rs=ps.executeQuery();
	   
	    while(rs.next()){
		hsl = true;
	    } 
	    
	}catch(Exception e){System.out.println(e);}  
	return hsl;
    }
    public static String getPetugasNum(){
	int jml = 0;
	String sql = "select count(nama) jml from tb_petugas where hakakses <> 'Admin';";
	try{  
	    Connection con= getConection();  
	    PreparedStatement ps=con.prepareStatement(sql);  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){  
		jml = rs.getInt("jml");
	    }  
	}catch(Exception e){System.out.println(e);}
	return String.valueOf(jml);
    }
    public static tbpetugas getRecordById(int id){
	tbpetugas petugas=null;
	try{  
	    Connection con= getConection();  
	    fungsi f = new fungsi();
	    PreparedStatement ps=con.prepareStatement("select * from tb_petugas where idpetugas=?");  
	    ps.setInt(1,id);  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){  
		petugas=new tbpetugas();  
		petugas.setIDPETUGAS(rs.getInt("idpetugas"));  
		petugas.setNAMA(rs.getString("nama"));  
		petugas.setSTT(rs.getString("sttpetugas"));  
		petugas.setNAMAUSER(rs.getString("username")); 
		petugas.setKEYACC(f.md5(rs.getString("keyaccess")));
		petugas.setHAKAKSES(rs.getString("hakakses"));
	    }  
	}catch(Exception e){System.out.println(e);}
	return petugas;
    }
    public static tbpetugas getRecordByUsername(String id){
	tbpetugas petugas=null;
	try{  
	    Connection con= getConection();  
	    fungsi f = new fungsi();
	    PreparedStatement ps=con.prepareStatement("select * from tb_petugas where username=?");  
	    ps.setString(1,id);  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){  
		petugas=new tbpetugas();  
		petugas.setIDPETUGAS(rs.getInt("idpetugas"));  
		petugas.setNAMA(rs.getString("nama"));  
		petugas.setSTT(rs.getString("sttpetugas"));  
		petugas.setKEYACC(f.md5(rs.getString("keyaccess")));
		petugas.setHAKAKSES(rs.getString("hakakses"));
	    }  
	}catch(Exception e){System.out.println(e);}
	return petugas;
    }
    public static List<tbpetugas> getAllRecords(){  
	List<tbpetugas> list=new ArrayList<tbpetugas>();  
      
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("select * from tb_petugas WHERE hakakses <> 'admin';");  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){  
		tbpetugas u=new tbpetugas();  
		u.setIDPETUGAS(rs.getInt("idpetugas"));  
		u.setNAMA(rs.getString("nama"));  
		u.setNAMAUSER(rs.getString("username"));  
		u.setSTT(rs.getString("sttpetugas"));  
		u.setHAKAKSES(rs.getString("hakakses"));  
		list.add(u);  
	    }  
	}catch(Exception e){System.out.println(e);}  
	return list;  
    } 
    public static boolean storedata(tbpetugas u){
	boolean hslx=false;
	if(u.getKEYACC()== null){
	    return hslx;
	}
	if(!u.getKEYACC2().equals(u.getKEYACC())){
	    return hslx;
	}
	fungsi f = new fungsi();
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("insert into tb_petugas(nama,username,keyaccess,sttpetugas,hakakses) values(?,?,?,?,?)");  
	    ps.setString(1,u.getNAMA());  
	    ps.setString(2,u.getNAMAUSER());  
	    ps.setString(3,f.md5(u.getKEYACC()));  
	    ps.setString(4,u.getSTT());  
	    ps.setString(5,u.getHAKAKSES());
	    ps.execute();
	    hslx = true;
	}catch(Exception e){ System.out.println(e);}  

	return hslx;  
    }
    public static boolean update(tbpetugas u){  
	boolean hslx=false;
	fungsi f = new fungsi();
	try{  
	    Connection con=getConection();  
	    if((u.getKEYACC() == "") || (u.getKEYACC()== null)){
		PreparedStatement ps=con.prepareStatement("update tb_petugas set nama=?,username=?,sttpetugas=?, hakakses=? where idpetugas=?");  
		ps.setString(1,u.getNAMA());  
		ps.setString(2,u.getNAMAUSER());    
		ps.setString(3,u.getSTT());  
		ps.setString(4,u.getHAKAKSES());
		ps.setInt(5,u.getIDPETUGAS());  
		ps.execute();
	    }else{
		if(!u.getKEYACC2().equals(u.getKEYACC())){
		    return false;
		}
		PreparedStatement ps=con.prepareStatement("update tb_petugas set nama=?,username=?,keyaccess=?,sttpetugas=?, hakakses=? where idpetugas=?");  
		ps.setString(1,u.getNAMA());  
		ps.setString(2,u.getNAMAUSER());  
		ps.setString(3,f.md5(u.getKEYACC()));  
		ps.setString(4,u.getSTT());  
		ps.setString(5,u.getHAKAKSES());
		ps.setInt(6,u.getIDPETUGAS());  
		ps.execute();
	    }
	    hslx=true;
	}catch(Exception e){System.out.println(e);}  
	return hslx;  
    }  
    public static boolean delete(tbpetugas u){  
	boolean hslx=false;
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("delete from tb_petugas where idpetugas=?");  
	    ps.setInt(1,u.getIDPETUGAS());  
	    ps.execute();
	    hslx=true;
	}catch(Exception e){System.out.println(e);}  

	return hslx;  
    }
 
}
