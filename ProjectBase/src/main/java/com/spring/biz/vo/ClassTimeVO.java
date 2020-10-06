package com.spring.biz.vo;

public class ClassTimeVO {
	private int timeCode;
	private String classDay;
	private int classTime;
	 
	
	public int getTimeCode() {
		return timeCode;
	}
	public void setTimeCode(int timeCode) {
		this.timeCode = timeCode;
	}
	public String getClassDay() {
		return classDay;
	}
	public void setClassDay(String classDay) {
		this.classDay = classDay;
	}
	public int getClassTime() {
		return classTime;
	}
	public void setClassTime(int classTime) {
		this.classTime = classTime;
	}
	@Override
	public String toString() {
		return "ClassTimeVO [timeCode=" + timeCode + ", classDay=" + classDay + ", classTime=" + classTime + "]";
	}
    


}
