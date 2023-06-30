/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

/**
 *
 * @author BCMedia
 */
public class tbpetugas {
    private int idpetugas;  
    private String nama,username,keyaccess,key2,sttpetugas, hakakses;

    public void setIDPETUGAS(int nval){
	this.idpetugas = nval;
    }
    public void setNAMA(String nval){
	this.nama = nval;
    }
    public void setNAMAUSER(String nval){
	this.username = nval;
    }
    /**
     *
     * @param nval
     */
    public void setKEYACC(String nval){
	this.keyaccess = nval;
    }
    /**
     *
     * @param nval=""
     */
    public void setKEYACC2(String nval){
	this.key2 = nval;
    }
    public void setSTT(String nval){
	this.sttpetugas =  nval.trim();
    }
    public void setHAKAKSES(String nval){
	this.hakakses = nval;
    }
    
    public int getIDPETUGAS(){
	return this.idpetugas;
    }
    public String getNAMA(){
	return this.nama;
    }
    public String getNAMAUSER(){
	return this.username;
    }
    public String getKEYACC(){
	return this.keyaccess;
    }
    public String getKEYACC2(){
	return this.key2;
    }
    public String getSTT(){
	return this.sttpetugas.trim();
    }
    public String getHAKAKSES(){
	return this.hakakses;
    }
   

}
