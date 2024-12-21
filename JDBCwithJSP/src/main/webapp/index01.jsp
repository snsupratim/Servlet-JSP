<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
69 <br>
snsupratim <br>
20 <br>
<br>

<%
	String query ="select * from demo2 where mark=101";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdb","root","snsupratim004@mysql");
	
	
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery(query);
	rs.next();

%>

Mark:<%= rs.getString(1) %><br>
Name:<%= rs.getString(2) %><br>
Age:<%= rs.getString(2) %><br>

</body>
</html>