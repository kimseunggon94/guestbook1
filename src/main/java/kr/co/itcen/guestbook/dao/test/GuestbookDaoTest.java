package kr.co.itcen.guestbook.dao.test;

import kr.co.itcen.guestbook.dao.GuestbookDao;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		String del_password =new GuestbookDao().getpassword("11");
		System.out.println(del_password);
	}

}
