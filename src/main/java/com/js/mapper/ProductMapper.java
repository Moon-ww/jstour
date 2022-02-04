package com.js.mapper;

import java.util.List;

import com.js.domain.ColorVO;
import com.js.domain.ProductVO;
import com.js.domain.SizeVO;

public interface ProductMapper {

	public void insert(ProductVO product);
	public void cinsert(ColorVO color);
	public void sinsert(SizeVO size);
	public List<ProductVO> getList();
}
