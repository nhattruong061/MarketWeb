package com.team.controller;

import javax.validation.Valid;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team.domain.Product;
import com.team.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;

    @GetMapping("/admin/product")
    public String index(Model model) {
        model.addAttribute("products", productService.findAll());
    	return "/admin/product";
    }
    //
    @GetMapping("/admin/product/create")
    public String create(Model model) {
    	model.addAttribute("product", new Product());
        return "/admin/product_form";
    }
    
    @GetMapping("/admin/product/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("product", productService.findOne(id));
        return "/admin/product_form";
    }
    
    @PostMapping("/admin/product/save")
    public String save(@Valid Product product, BindingResult result, RedirectAttributes redirect) {
        if (result.hasErrors()) {
            return "/admin/product_form";
        }
        productService.save(product);
        redirect.addFlashAttribute("success", "Saved contact successfully!");
        return "redirect:/admin/product";
    }
    //
    @GetMapping("/admin/product/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
        productService.delete(id);
        redirect.addFlashAttribute("success", "Deleted user successfully!");
        return "redirect:/admin/product";
    }
  
}
