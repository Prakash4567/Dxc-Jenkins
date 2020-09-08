<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="register" method="post" action="confirmcomplaint.jsp">
      Complaint Type :
      <select name = "complaint Type">
             <option value="KeyBoard">KeyBoard</option>
             <option value="Mouse">Mouse</option>
             <option value="Network">Network</option>
             <option value="Permission">Permission</option>
      </select>
      <br/><br/>
      Description :
      <input type="text" name="description"> <br/><br/>
      Complaint Date :
      <input type="date" name="Cdate"> <br/><br/>
      <!-- Turn Around Type :
      <input type="text" name="Tat" value="0" readonly="readonly"> <br/><br/> -->
      Severity :
      <input type="radio" id="Choice1" name="severity" value="1">
      <label for="Choice1">Critical</label>
      <input type="radio" id="Choice2" name="severity" value="2">
      <label for="Choice2">Important</label>
      <input type="radio" id="Choice3" name="severity" value="3">
      <label for="Choice3">can be delayed</label>
      <input type="radio" id="Choice4" name="severity" value="4">
      <label for="Choice4">No problem </label>
      <input type="submit" name="Submit Query">
</form>
</body>
</html>