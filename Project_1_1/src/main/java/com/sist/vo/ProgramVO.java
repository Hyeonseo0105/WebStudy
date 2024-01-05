package com.sist.vo;

import java.util.Date;

public class ProgramVO {
	 // 고유번호,모집정원,조회수
	private int pno,capacity,hit;
	// 포스터,제목,대상,장소
	private String poster,title,target1,target2,place;
	// 운영시작,운영종료,접수시작,접수마감,등록일
	private Date edu1,edu2,accept1,accept2,regdate;
	private String edu1_str,edu2_str,accept1_str,accept2_str;
	
	public String getEdu1_str() {
		return edu1_str;
	}
	public void setEdu1_str(String edu1_str) {
		this.edu1_str = edu1_str;
	}
	public String getEdu2_str() {
		return edu2_str;
	}
	public void setEdu2_str(String edu2_str) {
		this.edu2_str = edu2_str;
	}
	public String getAccept1_str() {
		return accept1_str;
	}
	public void setAccept1_str(String accept1_str) {
		this.accept1_str = accept1_str;
	}
	public String getAccept2_str() {
		return accept2_str;
	}
	public void setAccept2_str(String accept2_str) {
		this.accept2_str = accept2_str;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTarget1() {
		return target1;
	}
	public void setTarget1(String target1) {
		this.target1 = target1;
	}
	public String getTarget2() {
		return target2;
	}
	public void setTarget2(String target2) {
		this.target2 = target2;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public Date getEdu1() {
		return edu1;
	}
	public void setEdu1(Date edu1) {
		this.edu1 = edu1;
	}
	public Date getEdu2() {
		return edu2;
	}
	public void setEdu2(Date edu2) {
		this.edu2 = edu2;
	}
	public Date getAccept1() {
		return accept1;
	}
	public void setAccept1(Date accept1) {
		this.accept1 = accept1;
	}
	public Date getAccept2() {
		return accept2;
	}
	public void setAccept2(Date accept2) {
		this.accept2 = accept2;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
