<%@page import="org.hibernate.query.Query"%>
<%@page import="com.dxc.many.Employee"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.boot.MetadataSources"%>
<%@page import="org.hibernate.boot.Metadata"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistry"%>
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
  StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
  Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();

SessionFactory factory=meta.getSessionFactoryBuilder().build();
Session s=factory.openSession();
Query q = s.createQuery("from Employee e");
List<Employee> list =q.list();
for(Employee e : list) {
	out.println("Employee Id" +e.getEmployeeId()+"<br/>");
	out.println("Employee Name "+e.getName()+"<br/>");
	out.println("Email "+e.getEmail()+"<br/>");
	out.println("Address Id "+e.getAddress().getAddressId()+"<br/>");
	out.println("Adress Line 1 "+e.getAddress().getAddressId()+"<br/>");
	out.println("City "+e.getAddress().getCity()+"<br/>");
	out.println("State "+e.getAddress().getState()+"<br/>");
	out.println("Country "+e.getAddress().getCountry()+"<br/>");
	out.println("<hr/>");
}
%> 
</body>
</html>