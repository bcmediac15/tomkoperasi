<%-- 
    Document   : testdb
    Created on : Jun 23, 2023, 6:26:59 AM
    Author     : BCMedia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bcmkoperasi.petugas"%>
<%@page import="bcmkoperasi.tbpetugas"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Test Page</title>
    </head>
    <body>
        <h1>Test Get Data</h1>
<%  
//String id=request.getParameter("id");  
String id="1";
petugas p = new petugas();
tbpetugas tbp = p.getRecordById(Integer.parseInt(id));
out.print("IDPetugas "+tbp.getIDPETUGAS());
out.print("<br>NAMA: "+tbp.getNAMA());
out.print("<br>Status "+tbp.getSTT());
out.print("<br>Password: "+tbp.getKEYACC());
%>
    </body>
</html>
