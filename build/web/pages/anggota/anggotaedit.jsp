<%-- 
    Document   : anggotaedit
    Created on : Jun 27, 2023, 5:55:53 PM
    Author     : BCMedia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bcmkoperasi.anggota"%>
<%@page import="bcmkoperasi.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
int idPetugas= (Integer) session.getAttribute("idpetugas");
String idanggota=request.getParameter("p2");
anggota cn = new anggota();
tbanggota m = cn.getAnggotaRecordById(Integer.parseInt(idanggota));
%>