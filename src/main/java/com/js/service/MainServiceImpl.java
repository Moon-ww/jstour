package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.ProductVO;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class MainServiceImpl implements MainService {
	
	@Setter(onMethod_ = @Autowired)
	private com.js.mapper.MainMapper mapper;
	
	@Override
	public List<ProductVO> newprolist() {
		List<ProductVO> list = mapper.newprolist();
		return list;
	}

	@Override
	public List<ProductVO> bestprolist() {
		List<ProductVO> list = mapper.bestprolist();
		return list;
	}

}
