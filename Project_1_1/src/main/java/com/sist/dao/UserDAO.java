package com.sist.dao;

import java.util.*;
import java.sql.*;
import com.sist.dbcp.*;
import com.sist.vo.*;

public class UserDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDBCPConnection dbconn=new CreateDBCPConnection();
	private static UserDAO dao;
	
	public static UserDAO newInstance()
	{
		if(dao==null)
			dao=new UserDAO();
		return dao;
	}
	
	// 힌트 질문
	public List<String> hintQuestion()
	{
		List<String> list=new ArrayList<String>();
		try 
		{
			conn=dbconn.getConnection();
			String sql="SELECT hintQ FROM hint";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				list.add(rs.getString(1));
			}
			rs.close();
			
		} catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return list;
	}
	
	// ID중복체크
	public int UserIdCheck(String id)
	{
		int count=0;
		if(id.equals(""))
		{
			return count=2;
		}
		try 
		{
			conn=dbconn.getConnection();
			String sql="SELECT COUNT(*) FROM userjoin "
					  +"WHERE UserID=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			rs.close();
		}
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return count;
	}
		
	// 우편
	public List<ZipcodeVO> post(String dong)
	{
		List<ZipcodeVO> list=new ArrayList<ZipcodeVO>();
		try 
		{
			conn=dbconn.getConnection();
			String sql="SELECT zipcode,sido,gugun, "
					  +"dong,NVL(bunji,' ') "
					  +"FROM zipcode "
					  +"WHERE dong LIKE '%'||?||'%'";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dong);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				ZipcodeVO vo=new ZipcodeVO();
				vo.setZipcode(rs.getString(1));
				vo.setSido(rs.getString(2));
				vo.setGugun(rs.getString(3));
				vo.setDong(rs.getString(4));
				vo.setBunji(rs.getString(5));
				list.add(vo);
			}
			rs.close();
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return list;
		}
	
	public int postCount(String dong)
	{
		int count=0;
		try 
		{
			conn=dbconn.getConnection();
			String sql="SELECT COUNT(*) "
					  +"FROM zipcode "
					  +"WHERE dong LIKE '%'||?||'%'";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dong);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			rs.close();
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return count;
	}
		
	// 전화번호 체크
	public int userPhoneCheck(String phone)
	{
		int count=0;
		if(phone.equals("")) {
			return 2;
		}
		try
		{
			conn=dbconn.getConnection();
			String sql="SELECT COUNT(*) FROM userjoin WHERE phone=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, phone);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			rs.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return count;		
	}
		
	// 회원가입
	public void UserInsert(UserVO vo)
	{
		try 
		{
			conn=dbconn.getConnection();
			String sql="INSERT INTO userjoin VALUES("
					  +"?,?,?,?,?,?,?,?,?,?,SYSDATE,?,?,'n') ";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getUserID());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getGender());
			ps.setString(5, vo.getPost());
			ps.setString(6, vo.getAddr1());
			ps.setString(7, vo.getAddr2());
			ps.setString(8, vo.getPhone());
			ps.setString(9, vo.getBirth());
			ps.setString(10, vo.getEmail());
			ps.setInt(11, vo.getHno());
			ps.setString(12, vo.getHintA());
			ps.executeUpdate();
			
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
	}
	
	// 로그인
	public UserVO UserLogin(String id,String pwd)
	{
	   UserVO vo=new UserVO();
	   try 
		{
			conn=dbconn.getConnection();
			String sql="SELECT COUNT(*) "
					  +"FROM userjoin "
					  +"WHERE userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			rs.next();
			int count=rs.getInt(1);
			rs.close();
			
			if(count==0)
			{
				vo.setMsg("NOID");
			}
			else
			{
				sql="SELECT userid,name,pwd,admin "
				   +"FROM userjoin "
				   +"WHERE userid=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				rs=ps.executeQuery();
				rs.next();
				String db_id=rs.getString(1);
				String name=rs.getString(2);
				String db_pwd=rs.getString(3);
				String admin=rs.getString(4);
				rs.close();
				
				if(db_pwd.equals(pwd))
				{
					vo.setUserID(db_id);
					vo.setName(name);
					vo.setAdmin(admin);
					vo.setMsg("OK");
				}
				else
				{
					vo.setMsg("NOPWD");
				}
			}
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return vo;
	}
	
	// 아이디 찾기
	public String findId(String name,String email) 
	{
		String result="";
		try
		{
			conn=dbconn.getConnection();
			String sql="SELECT COUNT(*) FROM userjoin "
					  +"WHERE name=? AND email=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ResultSet rs=ps.executeQuery();
			rs.next();
			int count=rs.getInt(1);
			rs.close();
			
			if(count==0)
			{
				// 정보틀림
				result="NO";
			}
			else
			{
				sql="SELECT RPAD(SUBSTR(userid,1,2),LENGTH(userid),'*') "
					+"FROM userjoin "
					+"WHERE name=? AND email=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, email);
				
				rs=ps.executeQuery();
				rs.next();
				result=rs.getString(1);
				rs.close();
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return result;
	}
	
	// 비밀번호 찾기
	public String findPwd(String userid,int hno,String hintA)
	{
		String result="";
		try
		{
			conn=dbconn.getConnection();
			String sql="SELECT COUNT(*) FROM userjoin "
					  +"WHERE userid=? AND hno=? AND hintA=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setInt(2, hno);
			ps.setString(3, hintA);
			ResultSet rs=ps.executeQuery();
			rs.next();
			int count=rs.getInt(1);
			System.out.println(count);
			rs.close();
			
			if(count==0) 
			{
				// 틀림
				result="NO";
			}
			else if(count==1)
			{
				result="OK";
				
				sql="SELECT RPAD(SUBSTR(pwd,1,2),LENGTH(pwd),'*') "
				   +"FROM userjoin "
				   +"WHERE userid=? AND hno=? AND hintA=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, userid);
				ps.setInt(2, hno);
				ps.setString(3, hintA);
				rs=ps.executeQuery();
				rs.next();
				result=rs.getString(1);
				rs.close();
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			dbconn.disConnection(conn, ps);
		}
		return result;
	}
}