package fashion_shop.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fashion_shop.entity.Order;

public class orderDAO {

	@Autowired
	SessionFactory factory;
	
	public List<Order> getLOrder() {
		Session session = factory.getCurrentSession();
		String hql = "FROM  Order order by ID desc";
		Query query = session.createQuery(hql);
		List<Order> listOrder = query.list();
		return listOrder;
	}
}
