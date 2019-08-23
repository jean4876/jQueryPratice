package kr.or.ddit.board.vo;

import java.sql.Date;

public class ReplyVO {

	private int renum;
	private int bonum;
	private String name;
	private String cont;
	private Date redate;

	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public int getBonum() {
		return bonum;
	}
	public void setBonum(int bonum) {
		this.bonum = bonum;
	}
	public String getname() {
		return name;
	}
	public void setname(String gname) {
		this.name = gname;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Date getRedate() {
		return redate;
	}
	public void setRedate(Date redate) {
		this.redate = redate;
	}



}
