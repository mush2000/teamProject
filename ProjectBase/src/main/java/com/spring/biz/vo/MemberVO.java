package com.spring.biz.vo;

public class MemberVO {
	private String memberId;
	private String memberName;
	private String memberPw;
	private int wrongPwCnt;
	private String memberGender;
	private String memberBirthday;
	private String memberAddr;
	private String memberEmail;
	private String memberTel;
	private String memberTel2;
	private String joinDate;
	private String delYn;
	
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
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public int getWrongPwCnt() {
		return wrongPwCnt;
	}
	public void setWrongPwCnt(int wrongPwCnt) {
		this.wrongPwCnt = wrongPwCnt;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberBirthday() {
		return memberBirthday;
	}
	public void setMemberBirthday(String memberBirthday) {
		this.memberBirthday = memberBirthday;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getMemberTel2() {
		return memberTel2;
	}
	public void setMemberTel2(String memberTel2) {
		this.memberTel2 = memberTel2;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberName=" + memberName + ", memberPw=" + memberPw
				+ ", wrongPwCnt=" + wrongPwCnt + ", memberGender=" + memberGender + ", memberBirthday=" + memberBirthday
				+ ", memberAddr=" + memberAddr + ", memberEmail=" + memberEmail + ", memberTel=" + memberTel
				+ ", memberTel2=" + memberTel2 + ", joinDate=" + joinDate + ", delYn=" + delYn + "]";
	}
}
