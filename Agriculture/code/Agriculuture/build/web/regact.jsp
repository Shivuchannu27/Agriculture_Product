<%-- 
    Document   : RegisterAction
    Created on : Aug 16, 2019, 5:05:00 PM
    Author     : comp
--%>

<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
         Connection con;
        %>
        <%
            try{
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobile");

       
        
        
        //out.println(fname+lname+uname+pass+dob+email+phone+address);
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into register values('"+username+"','"+password+"','"+email+"','"+mobile+"')");
         if(i!= 0)
       {
            response.sendRedirect("Login.jsp?User registerd successfully");
            }
            else
            {
                response.sendRedirect("Register.jsp?User registerd failed");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>