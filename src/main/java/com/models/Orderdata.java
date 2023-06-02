package com.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Orderdata {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int cid;
	private String cname;
	private int pid;
	private String pname;
	private long tid;
	private int amount;
	
	public Orderdata() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Orderdata(int id, int cid, String cname, int pid, String pname, long tid, int amount) {
		super();
		this.id = id;
		this.cid = cid;
		this.cname = cname;
		this.pid = pid;
		this.pname = pname;
		this.tid = tid;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public long getTid() {
		return tid;
	}

	public void setTid(long tid) {
		this.tid = tid;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", cid=" + cid + ", cname=" + cname + ", pid=" + pid + ", pname=" + pname + ", tid="
				+ tid + ", amount=" + amount + "]";
	}
	
	
	
	

}
