package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.Product;
import com.example.demo.service.ProductService;
import com.example.demo.service.UploadService;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;


@Controller
public class ProductController {
    private final UploadService uploadService;
    private final ProductService productService;

    public ProductController(UploadService uploadService, ProductService productService) {
        this.uploadService = uploadService;
        this.productService = productService;
    }

    @GetMapping("/admin/product")
    public String getProduct(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        return "admin/product/list";
    }

    @GetMapping("/admin/product/create")
    public String createProductPage(Model model) {
        model.addAttribute("productForm", new Product());
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create") // POST
    public String createProduct(@ModelAttribute("productForm") Product product, @RequestParam("hoidanitFile") MultipartFile file) {
        // Xử lý upload file
        String image = this.uploadService.handleSaveUploadFile(file, "image");
        product.setImage(image);
        this.productService.createProduct(product);
        System.out.println(product);
        return "redirect:/admin/product";
    }
}
