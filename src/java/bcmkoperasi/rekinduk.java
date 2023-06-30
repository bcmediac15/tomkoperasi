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
public class rekinduk extends dbkon {
    public static tbrekinduk getRekIndukRecordById(int id){
	tbrekinduk RekInduk=null;
	try{  
	    Connection con= getConection();  
	    PreparedStatement ps=con.prepareStatement("select * from tb_rekinduk where kode=?");  
	    ps.setInt(1,id);  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){  
		RekInduk=new tbrekinduk();  
		RekInduk.setIDREKINDUK(rs.getInt("idrekinduk"));  
		RekInduk.setKODE(rs.getString("kode"));  
		RekInduk.setDESKRIPSI(rs.getString("deskripsi"));
	    }  
	}catch(Exception e){System.out.println(e);}
	return RekInduk;
    }
    public static List<tbrekinduk> getRekIndukAllRecords(){  
	List<tbrekinduk> list=new ArrayList<tbrekinduk>();  
      
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("select * from tb_rekinduk ORDER BY kode;");  
	    ResultSet rs=ps.executeQuery();  
	    while(rs.next()){
		tbrekinduk u=new tbrekinduk();
		u.setIDREKINDUK(rs.getInt("idrekinduk"));  
		u.setKODE(rs.getString("kode"));  
		u.setDESKRIPSI(rs.getString("deskripsi"));  
		list.add(u);  
	    }  
	}catch(Exception e){System.out.println(e);}  
	return list;  
    }
    public static String getRekIndukNum(){
	int jml = 0;
	String sql = "select count(kode) jml from tb_rekinduk;";
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
    public static boolean storedataRekInduk(tbrekinduk u){
	boolean hslx=false;
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("insert into tb_rekinduk(kode,deskripsi) values(?,?)");  
	    ps.setString(1,u.getKODE());  
	    ps.setString(2,u.getDESKRIPSI());
	    ps.execute();
	    hslx = true;
	}catch(Exception e){ System.out.println(e);}  

	return hslx;  
    }
    public static boolean updatedataRekInduk(tbrekinduk u){
	boolean hslx = false;
	try{
	    Connection con=getConection();
	    PreparedStatement ps=con.prepareStatement("update tb_rekinduk set kode=?,deskripsi=? where idrekinduk=?");  
	    ps.setString(1,u.getKODE());  
	    ps.setString(2,u.getDESKRIPSI());
	    ps.setInt(3,u.getIDREKINDUK());
	    ps.execute();
	    hslx = true;
	}catch(Exception e){ System.out.println(e);}  
	return hslx;
    }
    public static boolean deletedataRekInduk(tbrekinduk u){  
	boolean hslx=false;
	try{  
	    Connection con=getConection();  
	    PreparedStatement ps=con.prepareStatement("delete from tb_rekinduk where idrekinduk=?");  
	    ps.setInt(1,u.getIDREKINDUK());  
	    ps.execute();
	    hslx=true;
	}catch(Exception e){System.out.println(e);}  

	return hslx;  
    }
}
