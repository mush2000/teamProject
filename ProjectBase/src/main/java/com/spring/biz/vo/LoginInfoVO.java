package com.spring.biz.vo;

public class LoginInfoVO {
	private String memberId;
	private String memberName;
	private int stuNum;
	private int instNum;
	private boolean wrongId;
	
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
	public int getStuNum() {
		return stuNum;
	}
	public void setStuNum(int stuNum) {
		this.stuNum = stuNum;
	}
	public int getInstNum() {
		return instNum;
	}
	public void setInstNum(int instNum) {
		this.instNum = instNum;
	}
	public boolean isWrongId() {
		return wrongId;
	}
	public void setWrongId(boolean wrongId) {
		this.wrongId = wrongId;
	}
	
	@Override
	public String toString() {
		return "LoginInfoVO [memberId=" + memberId + ", memberName=" + memberName + ", stuNum=" + stuNum + ", instNum="
				+ instNum + ", wrongId=" + wrongId + "]";
	}
	
}
