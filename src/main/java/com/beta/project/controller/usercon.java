package com.beta.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.beta.project.model.user;
import com.beta.project.repo.Admininfo;
import com.beta.project.repo.userinfo;

import antlr.collections.List;

@Controller
public class usercon {

	  @Autowired
	  private userinfo usinfo;
	  @Autowired
	  private Admininfo proRe;
	 
    @GetMapping("/")
    public String home(HttpSession session, Model model) {
        if (session.getAttribute("username") != null) {
            model.addAttribute("username", session.getAttribute("username"));
        }
        return "home.jsp";
    }
	@PostMapping("/UserRegister")
    public String registers(@ModelAttribute user ee) {
        usinfo.save(ee);
        return "UserLogin.jsp";
    }
	@PostMapping("/UserLogin")
    public String login(@RequestParam String email, @RequestParam String password, HttpSession session) {
        user ob = usinfo.findByEmail(email);
        if (ob != null && ob.getEmail().equals("admin@gmail.com") && ob.getPassword().equals("admin")) {
            return "Adminview.jsp";

        } else if (ob != null && ob.getEmail().equals(email) && ob.getPassword().equals(password)) {
            session.setAttribute("username", ob.getName());
            return "ViewBus.jsp";
        }

        else {
            return "UserLogin.jsp";
        }
    }
	 @GetMapping("/UserViewBus")
	    public String userViewBus(Model model) {
	        List userbus = (List) proRe.findAll();
	        model.addAttribute("userbus", userbus);
	        return "ViewBus.jsp";
	    }
}
