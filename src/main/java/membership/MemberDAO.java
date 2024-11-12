package membership;

import common.JDBConnect;
import model1.board.BoardDTO;

public class MemberDAO extends JDBConnect {
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		String query = "SELECT * FROM member WHERE id=? and pass=?";
	
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("3"));
				dto.setRegidate(rs.getString("4"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public int deletePost(BoardDTO dto) {
		int result = 0;
		
		try {
			String query = "DELETE FROM board WHERE num=?";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getNum());

			result = psmt.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("게시물 삭제 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	
//	public static void main(String[] args) {
//		MemberDAO dao = new MemberDAO("com.mysql.cj.jdbc.Driver", "jdbc:mysql://localhost:3306/musthave", "musthave", "Tiger12#$");
//		
//		MemberDTO dto = dao.getMemberDTO("musthave", "Tiger12#$");
//		
//		System.out.println(dto);
//	}
	
}
