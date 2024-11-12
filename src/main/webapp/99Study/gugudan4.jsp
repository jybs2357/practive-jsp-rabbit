<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>구구단4</title>
</head>
<body>
	<%
	String guguParam = request.getParameter("val");
	int val = 3;
	
    if (guguParam != null) {
        try {
            val = Integer.parseInt(guguParam);
        }
        
        catch (NumberFormatException e) {
            out.print("<p>기본값으로 3단을 출력합니다.</p>");
        }
    }

    if (val <= 1 || val >= 10) {
        out.print("<p>기본값으로 3단을 출력합니다.</p>");
        val = 3;
    }
	%>

	
	<%
	out.print(val + "단입니다.<br />");
	%>

	<%
	for(int i = 1; i <= 9; i++){	
	%>
	
	<%= val + " * " + i + " = " + i * val + "<br />" %>

	<%	
		}
	%>
</body>
</html>