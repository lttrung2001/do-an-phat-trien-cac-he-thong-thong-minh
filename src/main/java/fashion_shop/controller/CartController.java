package fashion_shop.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import fashion_shop.DAO.productDAO;
import fashion_shop.bean.CartItem;
import fashion_shop.entity.Cart;
import fashion_shop.entity.Account;
import fashion_shop.entity.Order;
import fashion_shop.entity.OrderDetail;
import fashion_shop.entity.Product;
import fashion_shop.service.DBService;

@Transactional
@Controller
@RequestMapping("/cart/")
public class CartController {
	@Autowired
	SessionFactory factory;
	productDAO productDAO;

	List<Cart> cartItems = new ArrayList<Cart>();

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addCart(@ModelAttribute("cartItem") CartItem cartItem) {

		if (cartItem != null) {						
			Product product = new Product();
			product.setIdProduct(cartItem.getIdProduct());
			product.setName(cartItem.getName());
			//product.setColor(cartItem.getColor());
			//product.setSize(cartItem.getSize());
			product.setPrice(cartItem.getPrice());
			//product.setQuantity(cartItem.getQuantity());
			product.setImage(cartItem.getImage());

			Cart cart = new Cart();
			//cart.setPhone(cartItem.getUserPhone());
			cart.setProduct(product);

			DBService db = new DBService(factory);
			Cart existedCartItem = db.getCartItemByPhoneAndProduct(cartItem.getUserPhone(), cartItem.getIdProduct());

			if (existedCartItem != null) {
				cart.setId(existedCartItem.getId());
				cart.setQuantity(existedCartItem.getQuantity() + cartItem.getQuantity());
				db.updateCart(cart);
			} else {				
				cart.setQuantity(cartItem.getQuantity());				
				db.insertCart(cart);
			}
		}

		return "redirect:/home/detail/" + cartItem.getIdProduct() + ".htm";
	}

	@RequestMapping("checkout")
	public String checkout(ModelMap model, HttpServletRequest req) {
		HttpSession s = req.getSession();
		Account account = (Account) s.getAttribute("acc");

		if (account == null) {
			s.setAttribute("fromPage", "cart");			
			return "redirect:/user/login.htm";
		}

		DBService db = new DBService(factory);
		List<Cart> cartItems = db.getCartItemsByPhone(account.getPhone());			

		if (cartItems.size() == 0) {
			model.addAttribute("emptyCart", 1);	
			return "cart/checkOut";
		}

		List<Product> products = new ArrayList<Product>();

		for (Cart item : cartItems) {
			Product product = db.getProductById(item.getProduct().getIdProduct());
			if (product != null) {
				products.add(product);
			}
		}

		model.addAttribute("products", products);			
		return "cart/checkOut";
	}
}
