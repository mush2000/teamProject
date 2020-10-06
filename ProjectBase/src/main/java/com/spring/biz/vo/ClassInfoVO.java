package com.spring.biz.vo;

import java.util.Date;

public class ClassInfoVO {
	private int classNum; // primary key
	private int classesCode; // O
	private int classTime; // O
	private int classLv; // O
	private Date createDate; // default sysdate
	private Date regStartDate; // O
	private Date regEndDate; // O
	private Date startDate; // O
	private int locCode; // O
	private int instNum; // O
	private int classStatus;
	private int regMemberCnt;
	
	
	public Date getRegStartDate() {
		return regStartDate;
	}
	public void setRegStartDate(Date regStartDate) {
		this.regStartDate = regStartDate;
	}
	public Date getRegEndDate() {
		return regEndDate;
	}
	public void setRegEndDate(Date regEndDate) {
		this.regEndDate = regEndDate;
	}
	public int getClassNum() {
		return classNum;
	}
	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}
	public int getClassesCode() {
		return classesCode;
	}
	public void setClassesCode(int classesCode) {
		this.classesCode = classesCode;
	}
	public int getClassTime() {
		return classTime;
	}
	public void setClassTime(int classTime) {
		this.classTime = classTime;
	}
	public int getClassLv() {
		return classLv;
	}
	public void setClassLv(int classLv) {
		this.classLv = classLv;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public int getLocCode() {
		return locCode;
	}
	public void setLocCode(int locCode) {
		this.locCode = locCode;
	}
	public int getInstNum() {
		return instNum;
	}
	public void setInstNum(int instNum) {
		this.instNum = instNum;
	}
	public int getClassStatus() {
		return classStatus;
	}
	public void setClassStatus(int classStatus) {
		this.classStatus = classStatus;
	}
	public int getRegMemberCnt() {
		return regMemberCnt;
	}
	public void setRegMemberCnt(int regMemberCnt) {
		this.regMemberCnt = regMemberCnt;
	}
	@Override
	public String toString() {
		return "ClassInfoVO [classNum=" + classNum + ", classesCode=" + classesCode + ", classTime=" + classTime
				+ ", classLv=" + classLv + ", createDate=" + createDate + ", startDate=" + startDate + ", regStartDate="
				+ regStartDate + ", regEndDate=" + regEndDate + ", locCode=" + locCode + ", instNum=" + instNum
				+ ", classStatus=" + classStatus + ", regMemberCnt=" + regMemberCnt + "]";
	}
	
	
	
	
}
