package fashion_shop.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fashion_shop.entity.Cart;
import fashion_shop.entity.Product;

@Transactional
@Repository
public class DBService {
	@Autowired
	SessionFactory factory;

	public DBService() {
		super();
	}

	public DBService(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	public Product getProductById(String id) {
		String fnt = "getProductById: ";

		Session session = factory.getCurrentSession();
		String hql = "FROM Product where id = :id";
		Product pd;

		try {
			Query query = session.createQuery(hql);
			query.setParameter("id", id);
			pd = (Product) query.list().get(0);
		} catch (Exception e) {
			System.err.print(fnt + e);
			return null;
		}		

		return pd;
	}

	public List<Cart> getCartItemsByPhone(String phone) {		
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart WHERE phone = :phone";
		Query query = session.createQuery(hql);
		query.setParameter("phone", phone);
		List<Cart> list = query.list();

		return list;
	}

	public Cart getCartItemByPhoneAndProduct(String phone, String productId) {		
		String fnt = "getCartItemByPhoneAndProduct: ";

		Session session = factory.getCurrentSession();
		String hql = "FROM Cart WHERE phone = :phone AND productid = :productId";		
		Cart cart;

		try {
			Query query = session.createQuery(hql);
			query.setParameter("phone", phone);
			query.setParameter("productId", productId);
			cart = (Cart) query.list().get(0);			
		} catch (Exception e) {
			System.err.print(fnt + e);
			return null;
		}

		return cart;
	}

	public Integer insertCart(Cart cart) {
		String fnt = "insertCart: ";

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(cart);
			t.commit();
		} catch (Exception e) {
			System.err.print(fnt + e);
			t.rollback();
			return 0;
		} finally {
			session.close();
		}

		return 1;
	}

	public Integer updateCart(Cart cart) {
		String fnt = "updateCart: ";

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(cart);
			t.commit();
		} catch (Exception e) {
			System.err.print(fnt + e);
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	public Integer deleteCart(Integer id) {
		String fnt = "deleteCart: ";

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			Cart cart = (Cart) session.get(Cart.class, id);
			session.delete(cart);
			t.commit();
		} catch (Exception e) {
			System.err.print(fnt + e);
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

}