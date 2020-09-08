<%@page import="com.dxc.college.CollegeCrud"%>
<%@page import="com.dxc.college.CourseList"%>
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
      <%
            List<CourseList> clist = new CollegeCrud().showCourse();
      %>
      <table border ="3">
               <tr>
                      <th>Course No</th>
                      <th>Duration</th>
                      <th>StartDate</th>
                      <th>endDate</th>
                      <th>Head Of Dept</th>
                </tr>
                <%
                    for(CourseList c : clist) {
                %> 
                <tr>
                       <td> <%=c.getCourseNo() %> </td>
                       <td> <%=c.getDuration() %> </td>
                       <td> <%=c.getStartDate() %> </td>
                       <td> <%=c.getEndDate() %> </td>
                       <td> <%=c.getHod() %> </td>
                 </tr>
                 <%
                    }
                 %>      
      </table>
</body>
</html>