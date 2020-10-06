package com.spring.biz.vo;

public class ClassPlaceVO {
	private int placeCode;
    private String placeName;
    private int retalPee;
    private String available;
    
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public int getPlaceCode() {
		return placeCode;
	}
	public void setPlaceCode(int placeCode) {
		this.placeCode = placeCode;
	}
	public int getRetalPee() {
		return retalPee;
	}
	public void setRetalPee(int retalPee) {
		this.retalPee = retalPee;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	@Override
	public String toString() {
		return "ClassPlaceVO [placeCode=" + placeCode + ", placeName=" + placeName + ", retalPee=" + retalPee
				+ ", available=" + available + "]";
	}
    
    


}
