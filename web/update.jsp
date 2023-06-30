<%-- 
    Document   : update.jsp
    Created on : Jun 26, 2023, 3:29:18 PM
    Author     : BCMedia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String footer ="";
String judulpage = "";
String urltarger="";
boolean hsl = false;
String aksi=request.getParameter("act");
switch(aksi){
    case "rekeninginduk":
%>
<%@page import="bcmkoperasi.rekinduk"%> 
<jsp:useBean id="rekid" class="bcmkoperasi.tbrekinduk"></jsp:useBean>  
<jsp:setProperty property="*" name="rekid"/>
<%
    hsl=rekinduk.updatedataRekInduk(rekid);
    if(hsl){
        footer = "<script>Swal.fire({position: 'center',icon: 'success',title: 'Data Rekening Induk berhasil diperbaharui',showConfirmButton: false,timer: 1500});</script>";
        judulpage = "Perubahan Data Rekening Induk Sukses";
    }else{  
        footer = "<script>Swal.fire({position: 'center',icon: 'error',title: 'Data Rekening Induk tidak berhasil diperbaharui',showConfirmButton: false,timer: 1500});</script>";
        judulpage = "Perubahan Data Rekening Induk Gagal";
    }  
        urltarger="dashboard.jsp?act=rekeninginduk";
        break;
    case "petugas":
%>
<%@page import="bcmkoperasi.petugas"%> 
<jsp:useBean id="u" class="bcmkoperasi.tbpetugas"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<%
    hsl=petugas.update(u);
    if(hsl){
        footer = "<script>Swal.fire({position: 'center',icon: 'success',title: 'Data Petugas berhasil diperbaharui',showConfirmButton: false,timer: 1500});</script>";
        judulpage = "Perubahan Data Petugas Sukses";
    }else{  
        footer = "<script>Swal.fire({position: 'center',icon: 'error',title: 'Data Petugas tidak berhasil diperbaharui',showConfirmButton: false,timer: 1500});</script>";
        judulpage = "Perubahan Data Petugas Gagal";
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