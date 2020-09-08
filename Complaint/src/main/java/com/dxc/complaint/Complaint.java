package com.dxc.complaint;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Complaint")
public class Complaint {

	private int ComplaintId;
	private String ComplaintType;
	private String Description;
	private Date CDate;
	private int Tat;
	private int Severity;
	private String Cstatus;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ComplaintId")
	public int getComplaintId() {
		return ComplaintId;
	}
	public void setComplaintId(int complaintId) {
		ComplaintId = complaintId;
	}
	@Column(name="ComplaintType")
	public String getComplaintType() {
		return ComplaintType;
	}
	public void setComplaintType(String complaintType) {
		ComplaintType = complaintType;
	}
	@Column(name="Description")
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	@Column(name="CDate")
	public Date getCDate() {
		return CDate;
	}
	public void setCDate(Date cDate) {
		CDate = cDate;
	}
	@Column(name="Tat")
	public int getTat() {
		return Tat;
	}
	public void setTat(int tat) {
		Tat = tat;
	}
	@Column(name="Severity")
	public int getSeverity() {
		return Severity;
	}
	public void setSeverity(int severity) {
		Severity = severity;
	}
	@Column(name="CStatus")
	public String getCstatus() {
		return Cstatus;
	}
	public void setCstatus(String cstatus) {
		Cstatus = cstatus;
	}
}
