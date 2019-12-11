package members;

import java.sql.*;
import java.util.ArrayList;

public class MemberDAO {
	private String id="jsp", pwd="jsp";
	private String url="jdbc:oracle:thin:@localhost:1521:xe";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private int result;
	public MemberDAO()  
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public MemberDTO memberInfo(String user_id)
	{
		String sql = "select * from members where id= ?";
		MemberDTO dto = new MemberDTO();
		try
		{
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1,  user_id);
			rs = ps.executeQuery();
			if(rs.next())
			{
				dto.setId(user_id);
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		} catch(Exception e) { e.printStackTrace(); }
		
		return dto;
	}
	
	public int insertMember(MemberDTO dto)
	{
		String sql = "insert into members values(?,?,?,?,?)";
		try 
		{ 
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			ps.setString(5, dto.getTel());
			result = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	
	public int deleteMember(String user_id)
	{
		String sql = "delete members where id=?";
		try 
		{ 
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, user_id);
			result = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	
	public int modifyMember(MemberDTO dto)
	{
		String sql = "update members set pwd=?, name=?, addr=?, tel=? where id=?";
		try 
		{ 
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPwd());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getAddr());
			ps.setString(4, dto.getTel());
			ps.setString(5, dto.getId());
			result = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList memberView()
	{
		String sql = "select * from members";
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try 
		{ 
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} 
		catch (SQLException e) 
		{ 
			System.out.println("error");
			e.printStackTrace(); 
		}
		return list;
	}
}
