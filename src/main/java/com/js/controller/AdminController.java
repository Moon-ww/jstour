package com.js.controller;


import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.js.domain.ColorVO;
import com.js.domain.ProductVO;
import com.js.domain.SizeVO;
import com.js.service.MemberService;
import com.js.service.OrderService;
import com.js.service.ProductService;
import com.js.service.QnaService;
import com.js.service.SalesService;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Data
@Controller
@Log4j
@RequestMapping("/adm/*")
@AllArgsConstructor
public class AdminController {

	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	private OrderService service2;
	private MemberService service3;
	private QnaService service4;
	private SalesService service5;
	
	@GetMapping("/adminlogin")
	public void adminloginform() {
		
	}
	@GetMapping("/admin")
		public void List(Model model) {
		model.addAttribute("list", service.getList());
	}
	@GetMapping("/adminlogout")
	public String adminlogout() {
		return "redirect:/";
	}
	@GetMapping("/product/productwrite")
	public void productwriteform() {
	}
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	@PostMapping("/admin_product_write.do")
	public String productwrite(ProductVO product,ColorVO color,SizeVO size, @RequestParam("uploadFile") MultipartFile upload) {
		String uploadFolder = "c:\\upload";
		
		log.info("file name :"+upload.getOriginalFilename());
		log.info("file size : "+upload.getSize());
		
		
		String uploadFileName = upload.getOriginalFilename();
		
		//Internet explorer
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
		
		//duplicate x
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		File saveFile = new File(uploadPath, uploadFileName);
		String saveurl = saveFile.toString().substring(10);
		
		try {
			upload.transferTo(saveFile);
			product.setImage(saveurl);
			service.insert(product, color, size);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/adm/admin";
	}
	@GetMapping("/order/orderlist")
		public void AdminOrderList(Model model) {
		model.addAttribute("list", service2.getList());
	}	
	@GetMapping("/adminmemberlist")
		public void AdminMemberList(Model model) {
		model.addAttribute("list", service3.getList());
	}
	@GetMapping("/adminqnalist")
	public void AdminQnaList(Model model) {
	model.addAttribute("list", service4.getList());
	}
	@GetMapping("/sales_status")
	public void AdminSalesList(Model model) {
	model.addAttribute("list", service5.getList());
}
}
