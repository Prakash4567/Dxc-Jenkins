<%@page import="com.dxc.college.CollegeCrud"%>
<%@page import="com.dxc.college.Feedback"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       Feedback getting confirmed...!
       <%=(String)session.getAttribute("fid") %>
       <%
          String fid = (String)session.getAttribute("fid");
          String sname = (String)session.getAttribute("studentName");
          String instructor = (String)session.getAttribute("instructor");
          String subject = request.getParameter("subject");
          String fbvalue = request.getParameter("feedback");
       %>
       Student Name :
       <%=(String)session.getAttribute("studentName") %>
       Instructor :
       <%=(String)session.getAttribute("instructor") %>
       Subject :
       <%=request.getParameter("subject")%>
       Feedback Value :
       <%=request.getParameter("feedback") %>
       <%
          Feedback feedback = new Feedback();
          feedback.setFid(fid);
          feedback.setStudentName(sname);
          feedback.setInstructor(instructor);
          feedback.setSubject(subject);
          feedback.setFbvalue(fbvalue);
       %>
       <%=new CollegeCrud().addFeedback(feedback) %>
</body>
</html>