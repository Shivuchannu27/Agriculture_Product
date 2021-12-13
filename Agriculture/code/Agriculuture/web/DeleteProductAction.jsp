<%-- 
    Document   : deleteall
    Created on : Feb 13, 2019, 2:49:41 PM
    Author     : comp
--%>
<%@page import="Register.Db"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String id=request.getParameter("val");

try
{
    Connection con=Db.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("DELETE  from oprod where coname='"+id+"'");
    
    if(i>0)
    {
        
        response.sendRedirect("dashboard.jsp?CropDeleted Successfully");
    }
    else
    {
        response.sendRedirect("udelete.jsp?UserDeletion Failed");
    }
}
catch(Exception e)
{
  System.out.println("Error in DeleteStaffAction"+e.getMessage());
}
%>