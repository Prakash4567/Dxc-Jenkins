<%@page import="com.dxc.college.CollegeCrud"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <form method="get" action="addCourse.jsp">
              <center>
                        Duration :
                        <input type="number" name="duration"/> <br/><br/>
                        Start Date :
                        <input type="date" name="startDate"/> <br/><br/>
                        End Date :
                        <input type="date" name="endDate"/> <br/><br/>
                        HOD :
                        <input type="text" name="hod"/> <br/><br/>
                        <input type="Submit" value="Add Course" />
              </center>
       </form>
       <jsp:useBean id="course" class="com.dxc.college.CourseList"/>
       <jsp:setProperty property="duration" name="course"/>
       <jsp:setProperty property="hod" name="course"/>
       <%
               if(request.getParameter("duration") != null) {
            	   String sdate = request.getParameter("startDate");
            	   String endDate = request.getParameter("endDate");
            	   Date sd = Date.valueOf(sdate);
            	   Date ed = Date.valueOf(endDate);
            	   course.setStartDate(sd);
            	   course.setEndDate(ed);
        %>
        <%= new CollegeCrud().addCourse(course) %>  
        <%    
               }
       %>
</body>
</html>