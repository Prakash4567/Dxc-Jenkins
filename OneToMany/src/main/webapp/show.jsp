<%@page import="com.dxc.one.Answer"%>
<%@page import="com.dxc.one.Question"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
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
	Query q = s.createQuery("from Question");
	List<Question> list =q.list();
	for(Question question : list) {
		out.println("Question Id  " +question.getId() + "<br/>");
		out.println("Question Name  " +question.getQname() + "<br/>");
		List<Answer> ans = question.getAnswers();
		for(Answer a : ans) {
			out.println("Answer ID  " +a.getId() + "<br/>");
			out.println("Answer Name  " +a.getAnswername() + "<br/>");
			out.println("Posted By  " +a.getPostedBy() + "<br/><hr/>");
		}
	}
	%>
</body>
</html>