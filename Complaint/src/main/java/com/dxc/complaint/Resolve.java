package com.dxc.complaint;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Resolve")
public class Resolve {

	private int Rid;
	private int ComplaintId;
	private Date rdate;
	private String ResolvedBy;
	private String RComments;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Rid")
	public int getRid() {
		return Rid;
	}
	public void setRid(int rid) {
		Rid = rid;
	}
	@Column(name="ComplaintId")
	public int getComplaintId() {
		return ComplaintId;
	}
	public void setComplaintId(int complaintId) {
		ComplaintId = complaintId;
	}
	@Column(name="Rdate")
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	@Column(name="ResolvedBy")
	public String getResolvedBy() {
		return ResolvedBy;
	}
	public void setResolvedBy(String resolvedBy) {
		ResolvedBy = resolvedBy;
	}
	@Column(name="RComments")
	public String getRComments() {
		return RComments;
	}
	public void setRComments(String rComments) {
		RComments = rComments;
	}
}
