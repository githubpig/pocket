package com.maijia.model;

public class Params {
	private Integer id;
	private String name;
	private Double start_money; //起投钱数
	private Integer project_type;//项目类型
	private Integer pageNo = 0 ; // 默认0
	private Integer pageSize = 10; //默认10
	private Integer status;			//是否发布
	
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getStart_money() {
		return start_money;
	}
	public void setStart_money(Double start_money) {
		this.start_money = start_money;
	}
	public Integer getProject_type() {
		return project_type;
	}
	public void setProject_type(Integer project_type) {
		this.project_type = project_type;
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
}
