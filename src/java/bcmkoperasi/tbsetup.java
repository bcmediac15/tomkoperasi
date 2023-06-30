/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

/**
 *
 * @author BCMedia
 */
public class tbsetup {
    private int idsetup;  
    private String namakoperasi,alamat,notelp, pendirian;

    public void setIDSETUP(int nval){
	this.idsetup = nval;
    }
    public void setNAMAKOPERASI(String nval){
	this.namakoperasi = nval;
    }
    public void setALAMAT(String nval){
	this.alamat = nval;
    }
    public void setNOTELP(String nval){
	this.notelp = nval;
    }
    public void setPENDIRI(String nval){
	this.pendirian = nval;
    }    
    public int getIDSETUP(){
	return this.idsetup;
    }
    public String getNAMAKOPERASI(){
	return this.namakoperasi;
    }
    public String getALAMAT(){
	return this.alamat;
    }
    public String getNOTELP(){
	return this.notelp;
    }
    public String getPENDIRI(){
	return this.pendirian;
    }
    
}
