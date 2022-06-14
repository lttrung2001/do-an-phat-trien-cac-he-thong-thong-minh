package fashion_shop.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fashion_shop.entity.Account;

public class customerDAO {
	
	@Autowired
	SessionFactory factory;
	
	public List<Account> getLcus() {
		Session session = factory.getCurrentSession();
		String hql = "from Account where Role = 2";
		Query query = session.createQuery(hql);
		List<Account> listcus = query.list();
		return listcus;
	}
}
