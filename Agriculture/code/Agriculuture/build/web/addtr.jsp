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
        String trainingname=request.getParameter("trainingname");
        String trainername=request.getParameter("trainername");
        String dur=request.getParameter("dur");
        String dfro=request.getParameter("dfro");
        String dto=request.getParameter("dto");
        String addr=request.getParameter("addr");
        String about=request.getParameter("about");
       
       
        
        
        //out.println(fname+lname+uname+pass+dob+email+phone+address);
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into Training values('"+trainingname+"','"+trainername+"','"+dur+"','"+dfro+"','"+addr+"','"+about+"')");
         if(i!= 0)
       {
            response.sendRedirect("dashboard.jsp?Training Added successfully");
            }
            else
            {
                response.sendRedirect("user.jsp.jsp?Training Added failed");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>