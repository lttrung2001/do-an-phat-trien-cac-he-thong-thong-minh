package fashion_shop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fashion_shop.entity.Account;
import fashion_shop.entity.Product;
import fashion_shop.entity.ProductCategory;
import fashion_shop.service.DBService;
import fashion_shop.DAO.productDAO;
import fashion_shop.bean.CartItem;

@Transactional
@Controller
@RequestMapping(value = { "/home/", "/" })
public class HomeController {
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	productDAO productDAL;
	
	
	
	
	
	
	
	@RequestMapping("index")	
	public String index(ModelMap model) {
		model.addAttribute("prods", productDAL.getLProd());
		return "home/index";
	}
	
	// Show all products
	@RequestMapping(value = { "products" })
	public String view_product(ModelMap model) {
		
		List<Product> list = productDAL.getLProd();
		int size = productDAL.getLProd().size();
		List<ProductCategory> listCate = productDAL.getLCat();
		
		model.addAttribute("listCat", listCate);
		model.addAttribute("prods", list);
		model.addAttribute("prodsSize", size);
		
		model.addAttribute("catON", "false");
		
		return "home/products";
	}
	
	// Show products by cat
	@RequestMapping(value = { "products/{idCategory}" })
	public String view_product(ModelMap model, @PathVariable("idCategory") String idCategory) {
		
		List<Product> list = productDAL.getLProd();
		int size = productDAL.getLProd().size();
		List<ProductCategory> listCate = productDAL.getLCat();
		
		model.addAttribute("prods", list);
		model.addAttribute("prodsSize", size);
		model.addAttribute("listCat", listCate);
		
		model.addAttribute("catON", "true");
		model.addAttribute("catID", idCategory);
		return "home/products";
	}	
		
//	@RequestMapping(value = { "detail/{idProduct}" }, method = RequestMethod.GET)
//	public String view_product_detail(ModelMap model, @PathVariable("idProduct") String id) {
//		model.addAttribute("product", productDAL.getProduct(id));
//		model.addAttribute("prods", productDAL.getLProd());
//		return "home/detail";
//	}
	
	// view product_detail
	@RequestMapping(value = { "detail/{idProduct}" },method = RequestMethod.GET)
	public String view_product_detail(ModelMap model, @PathVariable("idProduct") String id, HttpSession session) {
//		DBService db = new DBService(factory);
//		Product product = db.getProductById(id);
//		Account account = (Account) session.getAttribute("acc");
//		if (account == null) {
//			return "home/detail";
//		}
//
//		CartItem cartItem = new CartItem();
//		cartItem.setUserPhone(account.getPhone());
//		cartItem.setIdProduct(product.getIdProduct());
//		cartItem.setName(product.getName());
//		cartItem.setPrice(product.getPrice());
//		cartItem.setImage(product.getImage());
//		
//		List<Product> list = productDAL.getLProd();
//		int size = productDAL.getLProd().size();
//		List<ProductCategory> listCate = productDAL.getLCat();
//		model.addAttribute("prods", list); 
//		model.addAttribute("prodsSize", size);
//		model.addAttribute("listCat", listCate);
//		
////		model.addAttribute("catON", "true");
////		model.addAttribute("catID", idCategory);
//
//
//		model.addAttribute("cartItem", cartItem);
//		return "home/detail";
		
		Product currentProduct = productDAL.getProduct(id);
		List<Product> relatedProduct = productDAL.getProductsByCluster(id);
		model.addAttribute("product", currentProduct);
		model.addAttribute("relatedProducts", relatedProduct);
		return "home/detail";
	}
	
}