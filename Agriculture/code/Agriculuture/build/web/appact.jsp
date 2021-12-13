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
        String pname=request.getParameter("pname");
        String cname=request.getParameter("cname");
        String cprice=request.getParameter("cprice");
        String addr=request.getParameter("addr");
        String mobile=request.getParameter("mobile");

       
        
        
        //out.println(fname+lname+uname+pass+dob+email+phone+address);
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into Oprod values('"+pname+"','"+cname+"','"+cprice+"','"+addr+"','"+mobile+"')");
         if(i!= 0)
       {
            response.sendRedirect("dashboard.jsp");
            session.setAttribute("c", pname);
            }
            else
            {
                response.sendRedirect("app.jsp");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>