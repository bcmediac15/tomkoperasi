/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

/**
 *
 * @author BCMedia
 */
public class tbkodeakun {
    private int idakun;
    private String kode, deskripsi, dk;

    public void setIDAKUN(int nval){
	this.idakun = nval;
    }
    public void setKODE(String nval){
	this.kode = nval;
    }
    public void setDESKRIPSI(String nval){
	this.deskripsi = nval;
    }
    public void setDK(String nval){
	this.dk = nval;
    }
    public int setIDAKUN(){
	return this.idakun;
    }
    public String setKODE(){
	return this.kode;
    }
    public String setDESKRIPSI(){
	return this.deskripsi;
    }
    public String setDK(){
	return this.dk;
    }
}
