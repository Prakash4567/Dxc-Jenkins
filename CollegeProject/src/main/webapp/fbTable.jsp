<%@page import="com.dxc.college.CollegeCrud"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        Instructor Name:
        <%=(String)session.getAttribute("fbInstructor")%>
        Subject:
        <%=request.getParameter("subject") %>
        
        <%
            String instr = (String)session.getAttribute("fbInstructor");
            String sub = request.getParameter("subject");
            List<String> res = new CollegeCrud().fbCount(instr,sub);
            for(String s : res) {
            	out.println(s);
            }
        %>
</body>
</html>