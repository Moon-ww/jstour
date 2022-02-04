package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.Criteria;
import com.js.domain.OrderVO;
import com.js.mapper.OrderMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

	@Setter(onMethod_ = @Autowired)
	private OrderMapper mapper;
	
	@Override
	public List<OrderVO> getList() {
		return mapper.getList();
	} 
}
