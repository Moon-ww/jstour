package com.js.service;

import java.util.List;

import com.js.domain.ColorVO;
import com.js.domain.ProductVO;
import com.js.domain.SizeVO;

public interface ProductService {

	public void insert(ProductVO product,ColorVO color,SizeVO size);
	public void cinsert(ColorVO color);
	public void sinsert(SizeVO size);
	public List<ProductVO> getList();
}
