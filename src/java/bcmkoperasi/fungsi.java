/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author BCMedia
 */
public class fungsi {
    public String md5(String plaintext) throws NoSuchAlgorithmException{
	MessageDigest m = MessageDigest.getInstance("MD5");
	m.reset();
	m.update(plaintext.getBytes());
	byte[] digest = m.digest();
	BigInteger bigInt = new BigInteger(1,digest);
	String hashtext = bigInt.toString(16);
	// Now we need to zero pad it if you actually want the full 32 chars.
	while(hashtext.length() < 32 ){
	  hashtext = "0"+hashtext;
	}
	    return hashtext;
    }
    public String menusub(String pg){
	String tx = "";
	switch(pg){
	    case "anggota":
		tx = "<li class='nav-item d-none d-sm-inline-block'><a href='dashboard.jsp?act=anggota&p1=list' class='nav-link'>List</a></li><li class='nav-item d-none d-sm-inline-block'><a href='dashboard.jsp?act=anggota&p1=new' class='nav-link'>Tambah Anggota</a></li>";
		break;
	    case "petugas":
		tx = "<li class='nav-item d-none d-sm-inline-block'><a href='index.jsp?act=anggota&p1=new' class='nav-link'>Baru</a></li><li class='nav-item d-none d-sm-inline-block'><a href='contact.jsp' class='nav-link'>Anggota</a></li>";
		break;
	}
	return tx;
    }
}
