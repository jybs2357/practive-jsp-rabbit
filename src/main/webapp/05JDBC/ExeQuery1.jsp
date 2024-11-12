<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>JDBC</title>
</head>
<body>
	<h2>게시판 조회 테스트</h2>
	<%
	JDBConnect jdbc = new JDBConnect();
	
	String sql = "SELECT * FROM board";
	Statement stmt = jdbc.con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	
	while (rs.next()) {
		int num = rs.getInt(1);
		String title = rs.getString("title");
		String content = rs.getString("content");
		String id = rs.getString("id");
		String postdate = rs.getString("postdate");
		int visitcount = rs.getInt(6);
		
		out.println("<table><tr>");
		out.println(String.format("%d %s %s %s %s %s %d", num, title, content, id, postdate, visitcount) + "<br />");
		out.println("</tr></table>");
	}
	
	jdbc.close();
	%>
</body>
</html>