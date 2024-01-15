package com.sist.dao;
import java.util.*;
import java.sql.*;
public class BookDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@211.238.142.119:1521:XE";
	private static BookDAO dao;
	
	public BookDAO()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception ex) {}
	}
	
	public void getConnection()
	{
		try
		{
			conn=DriverManager.getConnection(URL,"hr","happy");
		}catch (Exception ex) {}
	}
	public void disConnection()
	{
		try
		{
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		}catch(Exception ex) {}
	}
	public static BookDAO newInstance()
	{
		if(dao==null)
			dao=new BookDAO();
		return dao;
	}
	public List<BookVO> bookListData()
	{
		List<BookVO> list=new ArrayList<BookVO>();
		try
		{
			getConnection();
			String sql="SELECT b.isbn,image,booktitle,bookperson,bookdate,rownum "
					  +"FROM bookinfo b JOIN bookimage b1 "
					  +"ON b.isbn=b1.isbn WHERE rownum BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, 0);
			ps.setInt(2, 20);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				BookVO vo=new BookVO();
				vo.setIsbn(rs.getString(1));
				vo.setImage(rs.getString(2));
				vo.setBooktitle(rs.getString(3));
				vo.setBookperson(rs.getString(4));
				vo.setBookdate(rs.getDate(5));
				
				list.add(vo);				
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		return list;
	}
}
