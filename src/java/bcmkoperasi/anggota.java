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

/**
 *
 * @author BCMedia
 */
public class anggota  extends dbkon {
    public static tbanggota getAnggotaRecordById(int id){
	tbanggota anggota=null;
	try{  
	    Connection con= getConection();  
	    PreparedStatement ps=con.prepareStatement("select * from tb_anggota where idanggota=?");  
	    ps.setInt(1,id);  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){  
		anggota=new tbanggota();  
		anggota.setIDANGGOTA(rs.getInt("idanggota"));  
		anggota.setNAMA(rs.getString("nama"));  
		anggota.setALAMAT(rs.getString("alamat"));  
		anggota.setNOPHONE(rs.getString("nophone")); 
		anggota.setNOWA(rs.getString("nowa"));
		anggota.setIDPETUGAS(rs.getInt("idpetugas"));
	    }  
	}catch(Exception e){System.out.println(e);}
	return anggota;
    }
    public static tbanggota getAnggotaRecordByName(String id){
	tbanggota anggota=null;
	String sql = "select * from tb_anggota where nama like '%"+id+"%'";
	try{  
	    Connection con= getConection();  
	    PreparedStatement ps=con.prepareStatement(sql);  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){  
		anggota=new tbanggota();  
		anggota.setIDANGGOTA(rs.getInt("idanggota"));  
		anggota.setNAMA(rs.getString("nama"));  
		anggota.setALAMAT(rs.getString("alamat"));  
		anggota.setNOPHONE(rs.getString("nophone")); 
		anggota.setNOWA(rs.getString("nowa"));
		anggota.setIDPETUGAS(rs.getInt("idpetugas"));
	    }  
	}catch(Exception e){System.out.println(e);}
	return anggota;
    }
    public static List<tbanggota> getAnggotaAllRecords(){  
	List<tbanggota> list=new ArrayList<tbanggota>();  
      
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("select * from tb_anggota;");  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){
		tbanggota u=new tbanggota();
		u.setIDANGGOTA(rs.getInt("idanggota"));  
		u.setNAMA(rs.getString("nama"));  
		u.setALAMAT(rs.getString("alamat"));  
		u.setNOPHONE(rs.getString("nophone")); 
		u.setNOWA(rs.getString("nowa"));
		u.setIDPETUGAS(rs.getInt("idpetugas"));
		list.add(u);  
	    }  
	}catch(Exception e){System.out.println(e);}  
	return list;  
    }
    public static String getAnggotaNum(){
	int jml = 0;
	String sql = "select count(nama) jml from tb_anggota where stt= 'Y';";
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
    public static boolean storedataAnggota(tbanggota u){
	boolean hslx=false;
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("insert into tb_anggota(nama,alamat,nophone,nowa,idpetugas) values(?,?,?,?,?)");  
	    ps.setString(1,u.getNAMA());  
	    ps.setString(2,u.getALAMAT());  
	    ps.setString(3,u.getNOPHONE());  
	    ps.setString(4,u.getNOWA());  
	    ps.setInt(5,u.getIDPETUGAS());
	    ps.execute();
	    hslx = true;
	}catch(Exception e){ System.out.println(e);}  

	return hslx;  
    }
    public static boolean updatedataAnggota(tbanggota u){
	boolean hslx = false;
	try{
	    Connection con=getConection();
	    PreparedStatement ps=con.prepareStatement("update tb_anggota set nama=?,alamat=?,nophone=?,nowa=?,idpetugas=? where idanggota=?");  
	    ps.setString(1,u.getNAMA());  
	    ps.setString(2,u.getALAMAT());  
	    ps.setString(3,u.getNOPHONE());  
	    ps.setString(4,u.getNOWA());  
	    ps.setInt(5,u.getIDPETUGAS());
	    ps.setInt(6,u.getIDANGGOTA());
	    ps.execute();
	    hslx = true;
	}catch(Exception e){ System.out.println(e);}  
	return hslx;
    }
    public static boolean deletedataAnggota(tbanggota u){  
	boolean hslx=false;
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("delete from tb_anggota where idanggota=?");  
	    ps.setInt(1,u.getIDANGGOTA());  
	    ps.execute();
	    hslx=true;
	}catch(Exception e){System.out.println(e);}  

	return hslx;  
    }
}
