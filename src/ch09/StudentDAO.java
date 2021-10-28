package ch09;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.h2.util.geometry.GeometryUtils;
// 데이터 베이스 연동을 위한 클래스 

public class StudentDAO {
	Connection conn =null;
	PreparedStatement pstmt;
	
	final String JDBC_DRIVER="org.h2.Driver";
	final String JDBC_URL="jdbc:h2:tcp://localhost/~/jwbookdb";
	
	public void open() {
		try {
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(JDBC_URL,"jwbook","0000");
			
		}catch(Exception e) {e.printStackTrace();}
	}
	public void close() {
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {	e.printStackTrace();}
		
	}
	public void insert(Student s) {
		open();
		String sql="INSERT INTO student(username,univ,birth,email) values(?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, s.getUsername());
			pstmt.setString(2, s.getUniv());
			pstmt.setDate(3, s.getBirth());
			pstmt.setString(4, s.getEmail());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	} //db에 학생등록 
	
	public List<Student> getAll() {
		open();
		List<Student> students =new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement("select*from studnet");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				Student s=new Student();
				s.setId(rs.getInt("id"));
				s.setUsername(rs.getString("username"));
				s.setUniv(rs.getString("univ"));
				s.setBirth(rs.getDate("birth"));
				s.setEmail(rs.getString("email"));
				students.add(s);
				
			}
		} catch (Exception e) {e.printStackTrace();}
		  finally {close();}
		return students;	
	}

}
