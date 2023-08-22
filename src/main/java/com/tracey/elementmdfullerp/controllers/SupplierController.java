package com.tracey.elementmdfullerp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tracey.elementmdfullerp.models.Supplier;
import com.tracey.elementmdfullerp.services.SupplierService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/suppliers")
public class SupplierController {

	private final SupplierService supplierServ;
	public SupplierController(SupplierService supplierServ) {
		this.supplierServ = supplierServ;
	}
	
	@GetMapping("/create")
	public String createSupplier(@ModelAttribute("supplier")Supplier supplier) {
		return "supplier/create.jsp";
	}
	
	@PostMapping("/process/create")
	public String processCreateSupplier(@Valid @ModelAttribute("supplier")Supplier supplier, BindingResult result) {
		if(result.hasErrors()) {
			return "supplier/create.jsp";
		}
		supplierServ.create(supplier);
		return "redirect:/";
	}
	
	@GetMapping("/all")
	public String showAllSuppliers(Model model) {
		model.addAttribute("allSuppliers", supplierServ.getAll());
		return "supplier/showAll.jsp";
	}

}
