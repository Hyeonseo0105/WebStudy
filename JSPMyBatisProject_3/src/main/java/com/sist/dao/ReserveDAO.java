package com.sist.dao;

import java.sql.*;
import java.util.*;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.controller.RequestMapping;
import com.sist.vo.*;

public class ReserveDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static SqlSessionFactory ssf=CommonsDataBase.getSsf();	
	private static ReserveDAO dao;
	
//	public static ReserveDAO newInstance()
//	{
//		if(dao==null)
//			dao=new ReserveDAO();
//		return dao;
//	}
	public static List<FoodVO> reserveFoodListData(int no)
	{
		SqlSession session=ssf.openSession();
		Map map=new HashMap();
		map.put("no",no);
		List<FoodVO> list=session.selectList("reserveFoodListData",map);
		session.close();
		return list;
	}
	
	public static String reserveDays(int fno)
	{
		SqlSession session=ssf.openSession();
		String rdays=session.selectOne("reserveDays",fno);
		session.close();
		return rdays;
	}
	
	public static String reserveTimes(int rno)
	{
		SqlSession session=ssf.openSession();
		String rtimes=session.selectOne("reserveTimes",rno);
		session.close();
		return rtimes;
	}
	
	public static String reserveGetTime(int tno)
	{
		SqlSession session=ssf.openSession();
		String rtimes=session.selectOne("reserveGetTime",tno);
		session.close();
		return rtimes;
	}
	
	public static void reserveInsert(ReserveInfoVO vo)
	{
		SqlSession session=ssf.openSession(true);
		session.insert("reserveInsert",vo);
		session.close();
		
	}
	
	public static List<ReserveInfoVO> reserveMyPageListData(String id)
	{
		SqlSession session=ssf.openSession();
		List<ReserveInfoVO> list=session.selectList("reserveMyPageListData",id);
		session.close();
		return list;
	}
	
	public static List<ReserveInfoVO> reserveAdminPageListData()
	{
		SqlSession session=ssf.openSession();
		List<ReserveInfoVO> list=session.selectList("reserveAdminPageListData");
		session.close();
		return list;
	}
	
	public static void reserveAdminOk(int no)
	{
		SqlSession session=ssf.openSession(true);
		session.update("reserveAdminOk",no);
		session.close();
	}
}
