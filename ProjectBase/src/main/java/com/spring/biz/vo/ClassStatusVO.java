package com.spring.biz.vo;

public class ClassStatusVO {
	private int classStatusCode;
	private String classStatus;
	
	public int getClassStatusCode() {
		return classStatusCode;
	}
	public void setClassStatusCode(int classStatusCode) {
		this.classStatusCode = classStatusCode;
	}
	public String getClassStatus() {
		return classStatus;
	}
	public void setClassStatus(String classStatus) {
		this.classStatus = classStatus;
	}
	@Override
	public String toString() {
		return "ClassStatusVO [classStatusCode=" + classStatusCode + ", classStatus=" + classStatus + "]";
	}
	
}
