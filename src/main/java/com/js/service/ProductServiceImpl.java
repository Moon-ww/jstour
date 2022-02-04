package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.ColorVO;
import com.js.domain.ProductVO;
import com.js.domain.SizeVO;
import com.js.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	public void insert(ProductVO product,ColorVO color,SizeVO size) {
		mapper.insert(product);
		mapper.cinsert(color);
		mapper.sinsert(size);
	}
	@Override
	public void cinsert(ColorVO color) {
		mapper.cinsert(color);
		
	}
	@Override
	public void sinsert(SizeVO size) {
		mapper.sinsert(size);
		
	}
	@Override
	public List<ProductVO> getList() {
		
		return mapper.getList();
	}
	

}
