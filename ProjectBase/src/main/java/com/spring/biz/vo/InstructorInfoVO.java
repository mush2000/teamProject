package com.spring.biz.vo;

public class InstructorInfoVO {
	private int instNum;
	private String memberId;
	private String regNum;
	private String carrer;
	private String license;
	private String instPos;
	private int salary;
	private String picture;
	
	
	public int getInstNum() {
		return instNum;
	}
	public void setInstNum(int instNum) {
		this.instNum = instNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getRegNum() {
		return regNum;
	}
	public void setRegNum(String regNum) {
		this.regNum = regNum;
	}
	public String getCarrer() {
		return carrer;
	}
	public void setCarrer(String carrer) {
		this.carrer = carrer;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getInstPos() {
		return instPos;
	}
	public void setInstPos(String instPos) {
		this.instPos = instPos;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "InstructorInfoVO [instNum=" + instNum + ", memberId=" + memberId + ", regNum=" + regNum + ", carrer="
				+ carrer + ", license=" + license + ", instPos=" + instPos + ", salary=" + salary + ", picture="
				+ picture + "]";
	}	
	
}
