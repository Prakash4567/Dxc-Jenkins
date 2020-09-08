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
<form action="fbreport.jsp">
Select Instructor :
                   <select name="instructor" onchange="this.form.submit()">
                   <option value="Pleaseselect">Select Instructor</option>
               <%
                 List<String> lstinstr=new CollegeCrud().getInstructors();
                 for(String s : lstinstr) {
               %>    
               <%
                 }
               %>
                   </select>
               <br/><br/>
               <%
                String s = request.getParameter("instructor");
                session.setAttribute("fbInstructor",s);
                out.println("Instructor is " +s);
               %>    
</form>
<form action="fbTable.jsp">
     Subject:
     <select name="subject">
          <option value ="please Select">Please Select Subject</option>
          <%
          List<String> lstopics=new CollegeCrud().getTopics(s);
          for(String str : lstopics) {
          %>
          <option value="<%=str%>"> <%=str%> </option>
          <%
          }
          %>
     </select>
</form>
</body>
</html>