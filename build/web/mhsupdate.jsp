<%-- 
    Document   : mhsupdate
    Created on : Jan 10, 2023, 9:54:07 AM
    Author     : BCMedia
--%>
<%@page import="bcmlatihan01.mhs"%> 
<jsp:useBean id="u" class="bcmlatihan01.tbMHS"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>

<%  

if(mhs.update(u)){  
//response.sendRedirect("success.jsp?act=UM");  
//out.print("<p>Record successfully saved!</p>  ");
    response.sendRedirect("dashboard.jsp?act=mhs&p1=UMS");
}else{  
//response.sendRedirect("error.jsp?act=UM");  
//out.print("<p>Sorry, an error occurred!</p>");
    response.sendRedirect("dashboard.jsp?act=mhs&p1=UME");
}  
%>