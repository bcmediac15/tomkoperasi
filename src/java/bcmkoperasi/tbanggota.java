/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

/**
 *
 * @author BCMedia
 */
public class tbanggota {
    private int idanggota,idpetugas;  
    private String nama,alamat,nophone,nowa;

    public void setIDANGGOTA(int nval){
	this.idanggota = nval;
    }
    public void setNAMA(String nval){
	this.nama = nval;
    }
    public void setALAMAT(String nval){
	this.alamat = nval;
    }
    public void setNOPHONE(String nval){
	this.nophone = nval;
    }
    public void setNOWA(String nval){
	this.nowa = nval;
    }
    public void setIDPETUGAS(int nval){
	this.idpetugas = nval;
    }
    public int getIDANGGOTA(){
	return this.idanggota;
    }
    public String getNAMA(){
	return this.nama;
    }
    public String getALAMAT(){
	return this.alamat;
    }
    public String getNOPHONE(){
	return this.nophone;
    }
    public String getNOWA(){
	return this.nowa;
    }
    public int getIDPETUGAS(){
	return this.idpetugas;
    }

}
