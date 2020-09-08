<%@page import="java.util.List"%>
<%@page import="com.dxc.college.CollegeCrud"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
         show() {
        	 alert("Hii Students");
         }
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
       CollegeCrud obj = new CollegeCrud();
       String fid = obj.generateFeedbackId();
       String name = request.getParameter("studentName");
       String sname="";
       if(name!=null) {
    	   sname=name;
       }
%> 
<form name="feedback" method="get" action="feedback.jsp">
      <center>
                FeeBackId :
                <input type="text" value=<%=fid %> name="fid" readonly"/> <br/><br/>
                StudentName :
                <input type="text" value="studentName"> <br/><br/>
                Instructor :
                <select name="instructor" onchange="show()">
                     <option value="Please Select">Please Select</option>
<%
   List<String> lstinstr=new CollegeCrud().getInstructors();
   for(String s : lstinstr) {
%>   
   <option value="<%=s%>"> <%=s%> </option> 
   <%
   }
   %>     
   </select>
   <br/><br/>
   <%
      String s = request.getParameter("instructor");
      out.println("Instructor is " +s);
      if (request.getParameter("instructor") !=null) {
    	  session.setAttribute("instructor", s);
      }
   %>  <br/><br/>
   <form action="feedbackConfirm.jsp">
   Subject :
   <select name="subject">
         <option value="Please Select">Please Select Subject</option>
         <%
         List<String> lstopics=new CollegeCrud().getTopics(s);
         for(String str : lstopics) {
         %>
         <%
         }
         %>
   </select>
   <input type ="radio" id="Choice1"
   name="feedback" value="Excellent">
   <label for="Choice1">Excellent</label>
   
   <input type ="radio" id="Choice2"
   name="feedback" value="Good">
   <label for="Choice2">Good</label>
   
   <input type ="radio" id="Choice3"
   name="feedback" value="Adequate">
   <label for="Choice3">Adequate</label>
   
   <input type ="radio" id="Choice4"
   name="feedback" value="Inaequate">
   <label for="Choice4">Inaequate</label>
   <input type="submit" value="Show"/>
   </form>        
      </center>    
</form>
</body>
</html>