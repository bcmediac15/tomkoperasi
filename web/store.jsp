<%-- 
    Document   : store
    Created on : Jun 26, 2023, 12:42:05 PM
    Author     : BCMedia
--%>
<%@page import="bcmkoperasi.petugas"%>
<%@page import="bcmkoperasi.anggota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
boolean hsl;
String footer ="";
String judulpage = "";
String urltarger="";
String aksi=request.getParameter("act");
switch(aksi){
    case "rekeninginduk":
%>
<%@page import="bcmkoperasi.rekinduk"%> 
<jsp:useBean id="rekid" class="bcmkoperasi.tbrekinduk"></jsp:useBean>  
<jsp:setProperty property="*" name="rekid"/>
<%
        hsl=rekinduk.storedataRekInduk(rekid);
        if(hsl){
            footer = "<script>Swal.fire({position: 'center',icon: 'success',title: 'Data Rekening Induk berhasil ditambahkan',showConfirmButton: false,timer: 1500});</script>";
            judulpage = "Penambahan Data Rekening Induk Sukses";
        }else{  
            footer = "<script>Swal.fire({position: 'center',icon: 'error',title: 'Data Rekening Induk tidak berhasil ditambahkan',showConfirmButton: false,timer: 1500});</script>";
            judulpage = "Penambahan Data Rekening Induk Gagal";
        }  
        urltarger="dashboard.jsp?act=rekeninginduk";
        break;
    case "anggota":
%>
<jsp:useBean id="a" class="bcmkoperasi.tbanggota"></jsp:useBean>  
<jsp:setProperty property="*" name="a"/>
<%  
        hsl = anggota.storedataAnggota(a);
        if(hsl){
            footer = "<script>Swal.fire({position: 'center',icon: 'success',title: 'Data Anggota berhasil ditambahkan',showConfirmButton: false,timer: 1500});</script>";
            judulpage = "Penambahan Data Anggota Sukses";
        }else{  
            footer = "<script>Swal.fire({position: 'center',icon: 'error',title: 'Data Anggota tidak berhasil ditambahkan',showConfirmButton: false,timer: 1500});</script>";
            judulpage = "Penambahan Data Anggota Gagal";
        }  
        urltarger="dashboard.jsp?act=anggota";
        break;
    case "petugas":
%>
<jsp:useBean id="u" class="bcmkoperasi.tbpetugas"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<%  
        hsl = petugas.storedata(u);
        if(hsl){
            footer = "<script>Swal.fire({position: 'center',icon: 'success',title: 'Data Petugas berhasil ditambahkan',showConfirmButton: false,timer: 1500});</script>";
            judulpage = "Penambahan Data Petugas Sukses";
        }else{  
            footer = "<script>Swal.fire({position: 'center',icon: 'error',title: 'Data Petugas tidak berhasil ditambahkan',showConfirmButton: false,timer: 1500});</script>";
            judulpage = "Penambahan Data Petugas Gagal";
        }  
        urltarger="dashboard.jsp?act=petugas";
        break;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=judulpage%></title>
</head>
<body>

    <script src="js/sweetalert2@11.js"></script>
    <%=footer%>
    <script>
        let myTimeout = setTimeout(kembali, 2000);
        function kembali(){
            window.location.replace("<%=urltarger%>");
        }
    </script>
    
</body>
</html>