<%@page import="com.dxc.college.Subject"%>
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
<table border="3">
   <%
    List<Subject> subjects =new CollegeCrud().showSubject();
   for(Subject s : subjects) {
   %>
   <tr>
            <td><%=s.getAcYear() %> </td>
            <td><%=s.getInstructor() %> </td>
    </tr>
    <%
   }
    %>        
</table>
</body>
</html>