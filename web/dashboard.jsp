<%-- 
    Document   : dashboard.jsp
    Created on : Feb 18, 2023, 3:01:30 PM
    Author     : BCMedia
--%>
<%
String jdpage = "Selamat Datang";
String aksi = "dashboard";
String pgT="";
//String pg = "dashboard";

if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    response.sendRedirect("index.jsp");
}else{  
    if(request.getParameter("act") != null && request.getParameter("act") != ""){ 
	aksi=request.getParameter("act");
	//pg = aksi;
}

    switch(aksi){
	case "anggota":
	    jdpage = "Data Anggota";
		pgT = "Anggota";
	    break;
	case "kasmasuk":
	    jdpage = "Data Kas Masuk";
		pgT = "Kas Masuk";
	    break;
	case "kaskeluar":
	    jdpage = "Data Kas Keluar";
		pgT = "Kas Keluar";
	    break;
	case "pinjaman":
	    jdpage = "Data Pinjaman";
		pgT = "Pinjaman Anggota";
	    break;
	case "petugas":
	    jdpage = "Data Petugas";
		pgT = "Data Petugas";
	    break;
	case "rekeninginduk":
	    jdpage = "Data Rekening Induk";
		pgT = "Data Rekening Induk";
	    break;
	default:
	    jdpage = "Dashboard";
	    pgT = "dashboard";
	    break;
    }
	session.setAttribute("jdpage", jdpage);
	session.setAttribute("pgT", pgT);
	session.setAttribute("pg", aksi);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include> 
<!--mainpage-->
<jsp:include page="navbar.jsp"></jsp:include>
<jsp:include page="slidebar.jsp"></jsp:include>
<jsp:include page="konten.jsp"></jsp:include> 
<!--mainpage-->
<jsp:include page="footer.jsp"></jsp:include> 
<%
    }
%>