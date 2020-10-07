package com.spring.biz.vo;


public class ClassInfoVO {
	private int classNum; // primary key
	private int classesCode; // O
	private int classTime; // O
	private int classLv; // O
	private String createDate; // default sysdate
	private String startDate; // O
	private String regStartDate; // O
	private String regEndDate; // O
	private int locCode; // O
	private int instNum; // O
	private int classStatus;
	private int regMemberCnt;
	private String classesName;
	private String classDay;
	private int classTimeHour;
	private String levelName;
	private String levelDetail;
	private String placeName;
	private String memberId;
	private String memberName;
	private String classStatusName;
	
	
	
	
	public String getRegStartDate() {
		return regStartDate;
	}
	public void setRegStartDate(String regStartDate) {
		this.regStartDate = regStartDate;
	}
	public String getRegEndDate() {
		return regEndDate;
	}
	public void setRegEndDate(String regEndDate) {
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
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
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
	public String getClassesName() {
		return classesName;
	}
	public void setClassesName(String classesName) {
		this.classesName = classesName;
	}
	public String getClassDay() {
		return classDay;
	}
	public void setClassDay(String classDay) {
		this.classDay = classDay;
	}
	public int getClassTimeHour() {
		return classTimeHour;
	}
	public void setClassTimeHour(int classTimeHour) {
		this.classTimeHour = classTimeHour;
	}
	public String getLevelName() {
		return levelName;
	}
	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}
	public String getLevelDetail() {
		return levelDetail;
	}
	public void setLevelDetail(String levelDetail) {
		this.levelDetail = levelDetail;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getClassStatusName() {
		return classStatusName;
	}
	public void setClassStatusName(String classStatusName) {
		this.classStatusName = classStatusName;
	}
	@Override
	public String toString() {
		return "ClassInfoVO [classNum=" + classNum + ", classesCode=" + classesCode + ", classTime=" + classTime
				+ ", classLv=" + classLv + ", createDate=" + createDate + ", startDate=" + startDate + ", regStartDate="
				+ regStartDate + ", regEndDate=" + regEndDate + ", locCode=" + locCode + ", instNum=" + instNum
				+ ", classStatus=" + classStatus + ", regMemberCnt=" + regMemberCnt + ", classesName=" + classesName
				+ ", classDay=" + classDay + ", classTimeHour=" + classTimeHour + ", levelName=" + levelName
				+ ", levelDetail=" + levelDetail + ", placeName=" + placeName + ", memberId=" + memberId
				+ ", memberName=" + memberName + ", classStatusName=" + classStatusName + "]";
	}
	
	
	
	
	
}
