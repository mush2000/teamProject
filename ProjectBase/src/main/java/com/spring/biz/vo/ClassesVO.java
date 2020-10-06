package com.spring.biz.vo;

public class ClassesVO {
	private int classesCode;
    private String classesName;
    private int classesFee;
    private String classesDetail;
    private String classesPic;
    
	public String getClassesPic() {
		return classesPic;
	}
	public void setClassesPic(String classesPic) {
		this.classesPic = classesPic;
	}
	public int getClassesCode() {
		return classesCode;
	}
	public void setClassesCode(int classesCode) {
		this.classesCode = classesCode;
	}
	public String getClassesName() {
		return classesName;
	}
	public void setClassesName(String classesName) {
		this.classesName = classesName;
	}
	public int getClassesFee() {
		return classesFee;
	}
	public void setClassesFee(int classesFee) {
		this.classesFee = classesFee;
	}
	public String getClassesDetail() {
		return classesDetail;
	}
	public void setClassesDetail(String classesDetail) {
		this.classesDetail = classesDetail;
	}
	
	@Override
	public String toString() {
		return "ClassesVO [classesCode=" + classesCode + ", classesName=" + classesName + ", classesFee=" + classesFee
				+ ", classesDetail=" + classesDetail + ", classesPic=" + classesPic + "]";
	}
    
    


}
