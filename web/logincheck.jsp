<%-- 
    Document   : logincheck
    Created on : Feb 18, 2023, 8:34:57 AM
    Author     : BCMedia
--%>
<%@page import="bcmkoperasi.petugas"%>
<%@page import="bcmkoperasi.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%

String u=request.getParameter("USER");
String ps=request.getParameter("PASS");


petugas P = new petugas();

if(P.ceklogin(u,ps)){
    
    tbpetugas tbp = P.getRecordByUsername(u); 
    String stt = tbp.getSTT();
    
    if(stt.equals("Y")){
        String nama = tbp.getNAMA();
        String TAkses = tbp.getHAKAKSES();
        int idp = new Integer(tbp.getIDPETUGAS());
        session.setAttribute("userid", u);
        session.setAttribute("username", nama);
        session.setAttribute("level", TAkses);
        session.setAttribute("idpetugas", idp);
    }
}
response.sendRedirect("index.jsp");
%>

