<%-- 
    Document   : RegisterAction
    Created on : Jan 17, 2018, 8:15:32 PM
    Author     : comp
--%>

<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
              String pname=request.getParameter("pname");
              String cname=request.getParameter("cname");  
              String cprice=request.getParameter("cprice");
              String addr=request.getParameter("addr");
               String mobile=request.getParameter("mobile");
             
              
 try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int j=st.executeUpdate("update oprod set cprice='"+cprice+"' where pname='"+pname+"' ");
      
        if(j!=0)
       {
          response.sendRedirect("dashboard.jsp?var=ResponseSent_Successfully");
       }
       else
       {
           response.sendRedirect("UpdateProductionAction.jsp?Response Sending Failed");
       }
       
    }
    catch(Exception e)
    {
        System.out.println("Error in pay"+e.getMessage());
    }
       
       
       
       
       
       %>
    </body>
</html>

