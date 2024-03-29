package com.metanet.metakurly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.metanet.metakurly.domain.ProductDTO;
import com.metanet.metakurly.service.ProductService;
import com.metanet.metakurly.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/products/*")
@AllArgsConstructor
public class ProductController {

	private ProductService service;
	
	private ReviewService rService;

	@GetMapping("/list")
	public String list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
		return "products/productList";
	}

	@GetMapping("/detail/{p_id}")
	public String get(@PathVariable("p_id") Long p_id, Model model) {

		log.info("detail");
		model.addAttribute("product", service.get(p_id));
		return "products/productDetail";

	}

	@GetMapping("/bestList")
	public String getBestProductList(Model model) {
		log.info("bestProductList");
		model.addAttribute("bestProductList", service.getBestProductList());
		return "products/bestProductList";

	}
	
}
