package com.dxc.college;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class CollegeCrud {
	
    public String addFeedback(Feedback feedback) {
    	SessionFactory sf = SessionHelper.getFactory();
    	Session s = sf.openSession();
    	Transaction t = s.beginTransaction();
    	s.save(feedback);
    	t.commit();
    	return "Feedback Recorded...!";
    }
    public List<String> fbCount(String instructor, String subject) {
    	SessionFactory sf = SessionHelper.getFactory();
    	Session s = sf.openSession();
    	Query q = s.createQuery("select fbvalue,count(*) from Feedback where instructor='"
    			+""+instructor+"' AND subject='"+subject+"' GROUP BY fbvalue");
    	List<?> lst = q.list();
    	List<String> result = new ArrayList<String>();
    	String res="";
    	for(int i=0; i<lst.size();i++) {
    		Object[] row = (Object[]) lst.get(i);
    		res = row[0]+"-----------"+row[1];
    		result.add(res);
    	}
    	return result;
    }
	public List<String> getTopics(String instructor) {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("select topic from Subject where instructor='"+instructor+"'");
		List<String> topics=q.list();
		return topics;
	}
	public List<String> getInstructors() {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("select distinct instructor from Subject");
		List<String> instr=q.list();
		return instr;
	}
	public String generateFeedbackId() {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from Feedback");
		List<CourseList> clist = q.list();
		String code="";
		String result="F001";
		if (clist.size() >0) {
		for (CourseList courseList : clist) {
			  code = courseList.getCourseNo();
		}
			int id = Integer.parseInt(code.substring(1));
			id++;
			
			if(id >=1 && id <=9) {
				result="F00" +id;
			}
			if (id>=10 && id<=99) {
				result="F0" +id;
			}
			if (id>=100 && id<=999) {
				result="F" +id;
			}
		}	
		return result;
	}
	public List<CourseList> showCourse() {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from CourseList");
		List<CourseList> clist = q.list();
		return clist;
	}
	public List<Subject> showSubject() {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		String cmd = "from Subject";
		Query q = s.createQuery(cmd);
		List<Subject> lst = q.list();
		return lst;
	}
	public int check(int acYear, String instructor,String topic) {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		String cmd = "from Subject where acYear="+acYear +
				"AND instructor='"+instructor+"'"+
				"AND topic='"+topic+"'";
		Query q = s.createQuery(cmd);
		List<Subject> lst = q.list();
		int count=lst.size();
		return count;
	}
	public String addSubject(Subject subject) {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		int cnt = check(subject.getAcYear(), subject.getInstructor(), subject.getTopic());
		if (cnt==0) {
			s.save(subject);
			t.commit();
			return "Subject Added Succesfully...!";
		} else {
			return "You are already allocated with this Subject...!";
		}
	}	
	public String generateCourseId() {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from CourseList");
		List<CourseList> clist = q.list();
		String code="";
		String result = "C001";
		if(clist.size()>0) {
		for (CourseList courseList : clist) {
			  code = courseList.getCourseNo();
		}
			int id = Integer.parseInt(code.substring(1));
			id++;
			
			if(id >=1 && id <=9) {
				result="C00" +id;
			}
			if (id>=10 && id<=99) {
				result="C0" +id;
			}
			if (id>=100 && id<=999) {
				result="C" +id;
			}
		}
		return result;
	}
	public String addCourse(CourseList course) {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		String cid = generateCourseId();
		course.setCourseNo(cid);
		s.save(course);
		t.commit();
		return "Course Added Successfully...!";
	}
}
