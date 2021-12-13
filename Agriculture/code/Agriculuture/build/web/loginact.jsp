<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
	
	<%
	
	    String username=request.getParameter("username");
		String password=request.getParameter("password");
	
		boolean flag=false;
                out.println(username);
                out.println("<br>");
                out.println(password);
                String status = "";
		out.println("<br>");
		try{
		
			 Class.forName("com.mysql.jdbc.Driver").newInstance();
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture", "root", "root");
		   	Statement stmt = con.createStatement();
		   	String query = "select * from register where username ='" + username + "' and password='"+password+"'";
		   	out.println(query);
                        out.println("<br>");
                        ResultSet rs = stmt.executeQuery(query);
			while(rs.next())
			{
				String pass= rs.getString("password");
                                status = rs.getString(2);
			 	if( pass.equals(password)) {
					flag=true;
					break;
				}		
			}	
			if (flag ){
			
				session.setAttribute("password", rs.getString("password"));
				session.setAttribute("user", rs.getString("username"));
				session.setAttribute("username", rs.getString("username"));
				
				 if(username.equals(username) && password.equals(password))
                                 {
					response.sendRedirect("UserDashboard.jsp");
                                        session.setAttribute("c", username);
                                 }
                                 else{
                                     response.sendRedirect("login.jsp?msg=invalid");
                                 }
				
			
			}
			else{
				response.sendRedirect("login.jsp?invalid ");
				
			}
		}
		catch(Exception e){
		
			out.println(e);
			
		}
				
%>