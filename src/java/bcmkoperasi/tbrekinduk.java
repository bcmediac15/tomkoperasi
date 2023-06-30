/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

/**
 *
 * @author BCMedia
 */
public class tbrekinduk {
    private int idrekinduk;
    private String kode, deskripsi;

    public void setIDREKINDUK(int nval){
	this.idrekinduk = nval;
    }
    public void setKODE(String nval){
	this.kode = nval;
    }
    public void setDESKRIPSI(String nval){
	this.deskripsi = nval;
    }
    public int getIDREKINDUK(){
	return this.idrekinduk;
    }
    public String getKODE(){
	return this.kode;
    }
    public String getDESKRIPSI(){
	return this.deskripsi;
    }    
}
