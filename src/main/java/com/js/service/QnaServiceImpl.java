package com.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.js.domain.QnaVO;
import com.js.mapper.QnaMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
@Service
@AllArgsConstructor
public class QnaServiceImpl implements QnaService {

	@Setter(onMethod_ = @Autowired)
	private QnaMapper mapper;
	
	@Override
	public List<QnaVO> getList() {
		return mapper.getList();
	} 
}
