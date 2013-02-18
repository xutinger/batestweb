package com.liuyijiang.batest.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.liuyijiang.batest.service.IMainService;
import com.liuyijiang.batest.vo.AccountVO;
import com.liuyijiang.batest.vo.OrderVO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ���������� ��action
 * @author liuyijiang
 *
 */
public class MainAction extends ActionSupport{
  
	@Autowired
	private IMainService ims;
	
	//λ��
	private String location;
	//
	private int demo;
	
	private AccountVO avo;
	
	//����list
	private List<OrderVO> list;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2710575328974667490L;
   
	//
	public String showMainIndex(){
		return SUCCESS;
	}

	//����ģ�����
	public String checkByDemo(){
		list = ims.getDemoList(demo);//�ڼ���ģ������
		if(list != null && location != null){
			avo = ims.checkOrders(list,location);
		}
		return SUCCESS;
	}
	
	//�Զ������
	public String checkByFree(){
		if(list != null && !list.isEmpty() && location != null){
			avo = ims.checkOrders(list,location);
		}
		return SUCCESS;
	}
	
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getDemo() {
		return demo;
	}

	public void setDemo(int demo) {
		this.demo = demo;
	}

	public AccountVO getAvo() {
		return avo;
	}

	public void setAvo(AccountVO avo) {
		this.avo = avo;
	}

	public List<OrderVO> getList() {
		return list;
	}

	public void setList(List<OrderVO> list) {
		this.list = list;
	}
	
	
	
}
