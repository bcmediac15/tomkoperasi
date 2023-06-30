/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bcmkoperasi;

/**
 *
 * @author BCMedia
 */
public class tbbuku {
    private int idbuku, idpetugas;
    private String kodebuku, namabuku, dk;

    public void setIDBUKU(int nval){ this.idbuku = nval; }
    public void setIDPETUGAS(int nval){ this.idpetugas = nval; }
    public void setKODEBUKU(String nval){ this.kodebuku = nval; }
    public void setNAMABUKU(String nval){ this.namabuku = nval; }
    public void setDK(String nval){ this.dk = nval; }

    public int getIDBUKU(){return this.idbuku;}
    public int getIDPETUGAS(){return this.idpetugas;}
    public String getKODEBUKU(){return this.kodebuku;}
    public String getNAMABUKU(){return this.namabuku;}
    public String getDK(){return this.dk;}

}
