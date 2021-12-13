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
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String subject=request.getParameter("subject");
         String message=request.getParameter("message");
       
        
        
        //out.println(fname+lname+uname+pass+dob+email+phone+address);
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into Contact values('"+name+"','"+email+"','"+subject+"','"+message+"')");
         if(i!= 0)
       {
            response.sendRedirect("thankyou.jsp");
            }
            else
            {
                response.sendRedirect("contact.jsp");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>