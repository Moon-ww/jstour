package com.js.service;

import java.util.List;

import com.js.domain.ColorVO;
import com.js.domain.Criteria;
import com.js.domain.OrderVO;
import com.js.domain.ProductVO;
import com.js.domain.SizeVO;

public interface OrderService {

	public List<OrderVO> getList();
}
