package ch10;
import java.sql.*;
import java.util.ArrayList;
//db연동을 위한 클래스 
//db테이블과 연동해서 기능을 제공하기 위한 클래스 , 삭제, 등록, 가져오기 등등 
import java.util.List;

public class NewsDAO {
	final String JDBC_DRIVER="org.h2.Driver";
	final String JDBC_URL="jdbc:h2:tcp://localhost/~/jwbookdb";
	//드라이버 로딩, 네트워크로 접속허용 
	//db연결을 가져오는 메소드 
	public Connection open() {
		Connection conn=null;
		try {
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(JDBC_URL,"jwbook","0000");
		} catch (Exception e) {e.printStackTrace();}
		return conn;
	}
	//뉴스를 추가하는 메서드 
	public void addNews(News n)throws Exception{
		Connection conn=open();
		String sql="insert into news(title,img,date,content)values(?,?,CURRENT_TIMESTAMP(),?)";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		
			pstmt.setString(1, n.getTitle());
			pstmt.setString(2, n.getImg());
			pstmt.setString(3, n.getContent());
			pstmt.executeUpdate();
		}
	
	
	//뉴스 기사 목록 전체를 가져오는 메서드 
	public List<News> getAll() throws Exception{
		Connection conn =open();
		List<News> newsList=new ArrayList<>();
		String sql = "select aid,title,PARSEDATETIME(date,'yyyy-MM-dd hh:mm:ss')as cdate from news";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
			while(rs.next()) {
				News n = new News();
				n.setAid(rs.getInt("aid"));
				n.setTitle(rs.getString("title"));
				n.setDate(rs.getString("cdate"));
				newsList.add(n);
			}
			return newsList;
			
		}
	
	//특정 뉴스기사의 세부 내용을 보여주기 위한 메서드 
	public News getNews(int aid) throws SQLException{
		Connection conn =open();
		News n = new News();
		String sql = "select aid,title,img,PARSEDATETIME(date,'yyyy-MM-dd hh:mm:ss')as cdate,content from news where aid=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,aid);
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		
		
			n.setAid(rs.getInt("aid"));
			n.setTitle(rs.getString("title"));
			n.setImg(rs.getString("img"));
			n.setDate(rs.getString("cdate"));
			n.setContent(rs.getString("content"));
			pstmt.executeQuery();
			return n;
		
		
	} //잠시 try 삭제 
	
	// 뉴스 삭제를 위한 메서드 
	public void delNews(int aid)throws SQLException{
		Connection conn =open();
		String sql="delete from news where aid=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, aid);
	}
	
	
		
}
