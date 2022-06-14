package fashion_shop.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fashion_shop.entity.Account;

public class adminDAO {

	@Autowired
	SessionFactory factory;
	
	public List<Account> getLAdmin() {
		Session session = factory.getCurrentSession();
		String hql = "from Account where Role = 1";
		Query query = session.createQuery(hql);
		List<Account> listAdmin = query.list();
		return listAdmin;
	}
}
