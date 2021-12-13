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
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobile");
        String addr=request.getParameter("addr");
        String pname=request.getParameter("pname");
        String date=request.getParameter("date");
        String price=request.getParameter("price");
        String quantity=request.getParameter("quantity");
        String total=request.getParameter("total");
       
       
        
        
        //out.println(fname+lname+uname+pass+dob+email+phone+address);
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into payment values('"+username+"','"+email+"','"+mobile+"','"+addr+"','"+pname+"','"+date+"','"+price+"','"+quantity+"','"+total+"')");
         if(i!= 0)
       {
            response.sendRedirect("thankyou.jsp?Payment successfully");
            }
            else
            {
                response.sendRedirect("payment.jsp?User Payment failed");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>