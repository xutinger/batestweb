package com.liuyijiang.batest.tools;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.liuyijiang.batest.vo.OrderVO;

/**
 * 初始化一些数据
 * @author liuyijiang
 *
 */
public class MainTools {
  
	//tax 和州 位置
	public static Map<String,Double> taxMap;
    
	public static Map<String,String> notaxMap;//免税type key: type-location value : free
	
	public static List<OrderVO> list1;
	
	public static List<OrderVO> list2; 
	
	public static List<OrderVO> list3;
	
	static{
	
		list1 = new ArrayList<OrderVO>();
		list1.add(new OrderVO("book",1,12.99,"BASE"));
		list1.add(new OrderVO("potato chips",1,3.99,"FOOD"));
		
		list2 = new ArrayList<OrderVO>();
		list2.add(new OrderVO("book",1,12.99,"BASE"));
		list2.add(new OrderVO("music cd",3,9.99,"BASE"));
		
		list3 = new ArrayList<OrderVO>();
		list3.add(new OrderVO("music cd",2,9.99,"BASE"));
		list3.add(new OrderVO("sweater",1,29.99,"CLOTHES"));
		
	}
	
	
	public static Map<String, Double> getTaxMap() {
		return taxMap;
	}

	public static void setTaxMap(Map<String, Double> taxMap) {
		MainTools.taxMap = taxMap;
	}

	public static List<OrderVO> getList1() {
		return list1;
	}

	public static void setList1(List<OrderVO> list1) {
		MainTools.list1 = list1;
	}

	public static List<OrderVO> getList2() {
		return list2;
	}

	public static void setList2(List<OrderVO> list2) {
		MainTools.list2 = list2;
	}

	public static List<OrderVO> getList3() {
		return list3;
	}

	public static void setList3(List<OrderVO> list3) {
		MainTools.list3 = list3;
	}

	public static Map<String, String> getNotaxMap() {
		return notaxMap;
	}

	public static void setNotaxMap(Map<String, String> notaxMap) {
		MainTools.notaxMap = notaxMap;
	}

}
