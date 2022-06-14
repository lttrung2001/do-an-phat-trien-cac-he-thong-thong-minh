package fashion_shop.controller;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fashion_shop.DAO.productDAO;


@Controller
public class TestController {
	@Autowired
	productDAO prodDAO;
	

	@RequestMapping(value="test/form", method=RequestMethod.GET)
	public String form( ModelMap model) {
		return "test";
	}
	
	@RequestMapping(value="test/form", method=RequestMethod.POST)
	public String form(ModelMap model, @RequestParam("mess") String mess) {
		model.addAttribute("message", "Your message is " + mess);
		return "test";
	}
}
