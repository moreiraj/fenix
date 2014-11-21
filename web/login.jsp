<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%!

String userdbName;
String userdbPsw;

%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/fenix";
String user = "root";
String dbpsw = "";

String sql = "select * from cliente where email=? and senha=? ";

String email = request.getParameter("email");
String senha = request.getParameter("senha");


if((!(email.equals(null) || email.equals("")) && !(senha.equals(null) || senha.equals(""))) )
{
	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(url, user, dbpsw);
		ps = con.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, senha);
		
		rs = ps.executeQuery();
		if(rs.next())
		{			
			userdbName = rs.getString("email");
			userdbPsw = rs.getString("senha");
			
			if(email.equals(userdbName) && senha.equals(userdbPsw) )
				{
					session.setAttribute("email",userdbName);
									
					response.sendRedirect("noticias.jsp");				
				}						   
		}
		else
			response.sendRedirect("error.jsp");
		rs.close();
		ps.close();				
		}
	catch(SQLException sqe)
	{
		out.println(sqe);
	}	
}
else
{
	%>
	
		<center><p style="color:red">Login inválido!</p></center>
		<% 
	getServletContext().getRequestDispatcher("/index.html").include(request, response);
}

%>
</body>
</html>