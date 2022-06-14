package fashion_shop.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import fashion_shop.entity.Product;

@Transactional
public class GlobalInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	SessionFactory factory;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> newList = new ArrayList<>();
		int countProduct = (list.size() < 28) ? list.size() : 28;
		for (int i = 0; i < countProduct; i++) {
			newList.add(list.get(i));
		}
		request.setAttribute("pros", newList);
		request.setAttribute("totalProd", newList.size());
		return true;
	}
}