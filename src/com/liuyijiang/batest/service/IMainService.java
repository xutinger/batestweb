package com.liuyijiang.batest.service;

import java.util.List;

import com.liuyijiang.batest.vo.AccountVO;
import com.liuyijiang.batest.vo.OrderVO;

public interface IMainService {
   
	public AccountVO checkOrders(List<OrderVO> list,String location);
	
	public List<OrderVO> getDemoList(int id);
}
