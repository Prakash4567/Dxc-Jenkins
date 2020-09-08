package com.dxc.college;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Subject")
public class Subject {

	private int subId;
	private int acYear;
	private String instructor;
	private String topic;
	private int theory;
	private int practical;
	
	@Id
	@Column(name="subId")
	public int getSubId() {
		return subId;
	}
	public void setSubId(int subId) {
		this.subId = subId;
	}
	@Column(name="acYear")
	public int getAcYear() {
		return acYear;
	}
	public void setAcYear(int acYear) {
		this.acYear = acYear;
	}
	@Column(name="instructor")
	public String getInstructor() {
		return instructor;
	}
	public void setInstructor(String instructor) {
		this.instructor = instructor;
	}
	@Column(name="topic")
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	@Column(name="theory")
	public int getTheory() {
		return theory;
	}
	public void setTheory(int theory) {
		this.theory = theory;
	}
	@Column(name="practical")
	public int getPractical() {
		return practical;
	}
	public void setPractical(int practical) {
		this.practical = practical;
	}
}