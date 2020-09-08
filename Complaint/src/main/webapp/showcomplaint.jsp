<%@page import="com.dxc.complaint.Complaint"%>
<%@page import="com.dxc.complaint.ComplaintCrud"%>
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
<table border=2>
<%

List<Complaint> complaints = new ComplaintCrud().showComplaints();
%>
<tr>
    <th>ComplaintId</th>
    <th>ComplaintType</th>
    <th>Description</th>
    <th>CDate</th>
    <th>Turn Around Time</th>
    <th>Severity</th>
    <th>Comment Status</th>
</tr>
<%
for(Complaint c : complaints) 
{
%> 
<% if (c.getTat() >=7) 
{
%>   
 <tr>
 <td><font color ="red"><%=c.getComplaintId() %></font></td>
 <td><font color ="red"><%=c.getComplaintType() %></font></td>
 <td><font color ="red"><%=c.getDescription() %></font></td>
 <td><font color ="red"><%=c.getCDate() %></font></td>
 <td><font color ="red"><%=c.getTat() %></font></td>
 <td><font color ="red"><%=c.getSeverity() %></font></td>
 <td><font color ="red"><%=c.getCstatus() %></font></td>
 </tr>
 
 <%
 } else {
	 %>
 <tr>
 <td><font color ="green"><%=c.getComplaintId() %></font></td>
 <td><font color ="green"><%=c.getComplaintType() %></font></td>
 <td><font color ="green"><%=c.getDescription() %></font></td>
 <td><font color ="green"><%=c.getCDate() %></font></td>
 <td><font color ="green"><%=c.getTat() %></font></td>
 <td><font color ="green"><%=c.getSeverity() %></font></td>
 <td><font color ="green"><%=c.getCstatus() %></font></td>
 </tr>
 <%
 }
 %>
 <%
 }
 %>
</table>
</body>
</html>