package com.dxc.college;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CourseList")
public class CourseList {

	private String CourseNo;
	private int duration;
	private Date startDate;
	private Date endDate;
	private String hod;
	
	@Id
	@Column(name="courseNo")
	public String getCourseNo() {
		return CourseNo;
	}
	public void setCourseNo(String courseNo) {
		CourseNo = courseNo;
	}
	@Column(name="duration")
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	@Column(name="startDate")
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	@Column(name="endDate")
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	@Column(name="hod")
	public String getHod() {
		return hod;
	}
	public void setHod(String hod) {
		this.hod = hod;
	}
}
