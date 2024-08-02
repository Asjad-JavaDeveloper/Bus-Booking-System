package com.beta.project.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.beta.project.model.addm;
import com.beta.project.repo.Admininfo;

import antlr.collections.List;

public class procon {
	 @Autowired
	    private Admininfo proin;
	
	 @PostMapping("/addpro")
	    public String addpro(@ModelAttribute addm p, @RequestParam("imageUrl") String imageUrl,@RequestParam("location") String location) {
	        p.setImageUrl(imageUrl);
	        p.setLocation(location);
	        proin.save(p);
	        return "redirect:/viewpro";
	    }

	    @GetMapping("/viewpro")
	    public String fetch(Model model) {
	        List busList = (List) proin.findAll();
	        model.addAttribute("busList", busList);
	        return "Adminview.jsp";
	    }
	    
	    @RequestMapping("delete/{id}")
	    public String deleteuser(@PathVariable int id) {
	        proin.deleteById(id);
	        return "redirect:/viewpro";
	    }
	    @RequestMapping("/{id}")
	    public String edit(@PathVariable int id, Model model) {
	    	addm bus = proin.findById(id);
	        model.addAttribute("addm",bus);
	        return "edit.jsp";
	    }
	    
	    @RequestMapping("/edit/{id}")
	    public String edituser(@PathVariable int id,@ModelAttribute addm p) {
	    	
	    	addm ob=proin.findById(id);
	    	if(ob!=null) {
	    		ob.setBusname(p.getBusname());
	    		ob.setBusowner(p.getBusowner());
	    		
	    		ob.setCity(p.getCity());
	    		ob.setDate(p.getDate());
	    		ob.setPrice(p.getPrice());
	    		ob.setLocation(p.getLocation());
	    		ob.setCategory(p.getCategory());
	    		ob.setState(p.getState());
	    		ob.setImageUrl(p.getImageUrl());
	    		ob.setDesc(p.getDesc());
	    		
	    		
	    		
	    		
	    		
	    		
	    	
	    		
	    		proin.save(ob);
	    	}
	    	return "redirect:/viewpro";
	    }
	    
	    
	    
	    @GetMapping("/search")
	    public String search(@RequestParam("state") String state, @RequestParam("city") String city, @RequestParam("category") String category, Model model) {
	        List searchResults = proin.findByCityAndCategory(state, city);
	        model.addAttribute("busList", searchResults);
	        return "searchresult.jsp";  // A new JSP to display search results
	    }
	    
	    
}
