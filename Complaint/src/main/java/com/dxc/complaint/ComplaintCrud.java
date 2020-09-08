package com.dxc.complaint;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class ComplaintCrud {

	public String registerComplaint(Complaint complaint) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht = (HibernateTemplate)ctx.getBean("hibernateTemplate");
		ht.save(complaint);
		return "Complaint Registered...!";
	}
	public List<Complaint> showComplaints() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht = (HibernateTemplate)ctx.getBean("hibernateTemplate");
		List<Complaint> complaints = ht.find("from Complaint where Cstatus='PENDING'");
		return complaints;
	}
	public String resolveComplaint(Resolve resolve) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht = (HibernateTemplate)ctx.getBean("hibernateTemplate");
		ht.save(resolve);
		String result;
		int complaintId = resolve.getComplaintId();
		Complaint compliant = null;
		List<Complaint> compliants = ht.find("from Compliant where CompliantId="+complaintId+"and Cstatus='PENDING'");
		if(compliants.size()>0) {
			compliant = compliants.get(0);
		} else {
			result = "complaint not found";
		}
		compliant.setCstatus("RESOLVED");
		ht.merge(compliant);
		result = "complaint Resolved";
		return result;
	}
}
