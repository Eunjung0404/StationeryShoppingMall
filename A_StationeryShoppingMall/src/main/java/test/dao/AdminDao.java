package test.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.JdbcUtil;
import test.vo.AdminVo;

public class AdminDao {

	private static AdminDao instance=new AdminDao();
	private AdminDao() {}
	public static AdminDao getInstance()
	{
		return instance;
	}
	//관리자추가
		public int insertAdmin(AdminVo vo)
		{
			Connection con=null;
			PreparedStatement pstmt=null;
			String sql="insert into admin value(?,?,?,sysdate)";
			try
			{
				con=JdbcUtil.getCon();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, vo.getaId());
				pstmt.setString(2,vo.getaPwd());
				pstmt.setInt(3,vo.getAlevel());
				int n=pstmt.executeUpdate();
				return n;	
			}catch(SQLException se)
			{
				se.printStackTrace();
				return -1;
			}finally
			{
				JdbcUtil.close(con, pstmt, null);
			}
		}
		//관리자 로그인
		public boolean loginAdmin(String id,String pwd)
		{
		   Connection con=null;
		   PreparedStatement pstmt=null;
		   ResultSet rs=null;
		   boolean n=false;
		   String sql="select * from admin where aid=?";
		   try
		   {
			   con=JdbcUtil.getCon();
			   pstmt=con.prepareStatement(sql);
			   pstmt.setString(1, id);
			   rs=pstmt.executeQuery();
			   if(rs.next())
				{   String id1=rs.getString("aId");
				    String pwd1=rs.getString("aPwd");
					if(id.equals(id1)&&pwd.equals(pwd1))
					{
						n=true;
					}
				}	
			   return n;
		   }catch(SQLException se)
			{
				se.printStackTrace();
				return n;
			}finally
			{
				JdbcUtil.close(con, pstmt, rs);
			}
		}
	//관리자 전체 불러오기
	public ArrayList<AdminVo> selectAdminAll()
	{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		//페이징 처리 필요
		String sql="select * from admin";
		ArrayList<AdminVo> list=new ArrayList<AdminVo>();
		try
		{
			con=JdbcUtil.getCon();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				String aId=rs.getString("aID");
				String aPwd=rs.getString("aPwd");
				int alevel=rs.getInt("alevel");
				Date regdate =rs.getDate("regdate");
				AdminVo vo=new AdminVo(aId, aPwd, alevel, regdate);
				list.add(vo);
			}
			return list;
			
		}catch(SQLException se)
		{
			se.printStackTrace();
			return null;
		}finally
		{
			JdbcUtil.close(con, pstmt, rs);
		}
	}
}
