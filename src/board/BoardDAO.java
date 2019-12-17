package board;

import java.sql.*;
import java.util.ArrayList;

public class BoardDAO 
{
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jsp", pwd="jsp";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BoardDAO()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> list()
	{
		String sql = "select * from board";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try
		{
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				BoardDTO dto = new BoardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setSavedate(rs.getTimestamp("savedate"));
				dto.setCount(rs.getInt("count"));
				dto.setAuthor(rs.getString("author"));
				list.add(dto);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	public void write_save(String title, String name, String pw, String content)
	{
		String sql = "insert into board (no, count, title, author, pwd, content) "+
				"values(board_seq.nextval,0,"+"?,?,?,?)";
		try
		{
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, name);
			ps.setString(3, pw);
			ps.setString(4, content);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}