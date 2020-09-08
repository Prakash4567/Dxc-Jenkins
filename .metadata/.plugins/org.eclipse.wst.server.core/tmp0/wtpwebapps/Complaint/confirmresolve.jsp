<%@page import="com.dxc.complaint.ComplaintCrud"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="resolve" class="com.dxc.complaint.Resolve"/>
<jsp:setProperty property="*" name="resolve"/>
<%

String cid=request.getParameter("complaintId");
if(cid!=null) {
	int cid1 = Integer.parseInt(cid);
	resolve.setComplaintId(cid1);
}
String rby = request.getParameter("resolvedBy");
if(rby!=null) {
	resolve.setResolvedBy(rby);
}

String rc = request.getParameter("RComments");
if(rc!=null){
	resolve.setRComments(rc);
}
%>
<%= new ComplaintCrud().resolveComplaint(resolve) %>
</body>
</html>