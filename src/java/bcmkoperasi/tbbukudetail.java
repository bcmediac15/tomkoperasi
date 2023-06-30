/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

/**
 *
 * @author BCMedia
 */
public class tbbukudetail {
    private int idbukudetail, idbuku, idpetugas;
    private String ref, deskripsi, dk, posting, tgl;
    private double nominal;

    public void setIDBUKUDETAIL(int nval){this.idbukudetail=nval;}
    public void setIDBUKU(int nval){this.idbuku=nval;}
    public void setIDPETUGAS(int nval){this.idpetugas=nval;}
    public void setREF(String nval){this.ref=nval;}
    public void setDESKRIPSI(String nval){this.deskripsi=nval;}
    public void setDK(String nval){this.dk=nval;}
    public void setPOSTING(String nval){this.posting=nval;}
    public void setTGL(String nval){this.tgl=nval;}
    public void setNOMINAL(double nval){this.nominal=nval;}

    public int getIDBUKUDETAIL(){return this.idbukudetail;}
    public int getIDBUKU(){return this.idbuku;}
    public int getIDPETUGAS(){return this.idpetugas;}
    public String getREF(){return this.ref;}
    public String getDESKRIPSI(){return this.deskripsi;}
    public String getDK(){return this.dk;}
    public String getPOSTING(){return this.posting;}
    public String getTGL(){return this.tgl;}
    public double getNOMINAL(){return this.nominal;}
}
