package com.sist.dao;

public class StudentModel {
   public StudentVO studentDetailData()
   {
	   StudentVO vo=new StudentVO();
	   vo.setHakbun(1);
	   vo.setName("임현서");
	   vo.setKor(100);
	   vo.setEng(100);
	   vo.setMath(100);
	   return vo;
   }
}