package fashion_shop.DAO;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fashion_shop.entity.Account;

@Transactional
@Repository
public class accountDAO {
	@Autowired
	SessionFactory factory;
	
	public List<Account> getLUser() {
		Session session = factory.getCurrentSession();
		String hql = "From Account";
		Query query = session.createQuery(hql);
		List<Account> listUser = query.list();
		return listUser;
	}
	
	public Account getUser( String username) {
		Session session = factory.getCurrentSession();
		Account user = (Account) session.get(Account.class, username);
		return user;
	}
	
	public boolean updateUser( String username, String name, Date birthday, String phone, String address ) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		Account acc = (Account) session.get(Account.class, username);
		acc.setFullname(name);
		acc.setBirthday(birthday);
		acc.setPhone(phone);
		acc.setAddress(address);
		
		boolean flag = true;
		try {
			session.update(acc);
			t.commit();
		} catch( Exception e) {
			t.rollback();
			flag =false;
			System.out.println(e);
		} finally {
			session.close();
		}
		
		return flag;
	}
}
