<%-- 
    Document   : mhsdestroy.jsp
    Created on : Jan 22, 2023, 10:35:10 PM
    Author     : BCMedia
--%>

<%@page import="bcmlatihan01.mhs"%> 
<jsp:useBean id="u" class="bcmlatihan01.tbMHS"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>

<%
//out.print(u.getId());
if(mhs.delete(u)){  
    //response.sendRedirect("success.jsp?act=DM");  
    response.sendRedirect("dashboard.jsp?act=mhs&p1=DMS");
}else{  
    //response.sendRedirect("error.jsp?act=DM");  
    response.sendRedirect("dashboard.jsp?act=mhs&p1=DME");
}  
%>