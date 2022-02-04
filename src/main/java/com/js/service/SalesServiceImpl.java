package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.ProductVO;
import com.js.mapper.SalesMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class SalesServiceImpl implements SalesService {

	@Setter(onMethod_ = @Autowired)
	private SalesMapper mapper;
	
	@Override
	public List<ProductVO> getList() {
		return mapper.getList();
	} 
}
