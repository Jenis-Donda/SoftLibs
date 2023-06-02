package com.spring.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.Embeddable;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.models.Accounting;
import com.models.Orderdata;
import com.models.User;


public class UserDao {
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public User getuserbyId(int id)
	{
		String sql = "select * from user where Id = ?";
		return template.queryForObject(sql, new Object[] {id} , new BeanPropertyRowMapper<User>(User.class));
	}
	
	public int update(User u) {
		String sql = "update user set name='" + u.getName() + "', email='" + u.getEmail() + "', number="
				+ u.getNumber() + ", address = '"+ u.getAddress()+ "' where id=" + u.getId() + "";
		return template.update(sql);
	}
	
	
	public int delete(User u) {
		String sql = "delete from user where id="+ u.getId()+"  ";
		return template.update(sql);
	}
	
	
	
	
	
	public List<Orderdata> getSoftwarePurchaseDetails(int id)
	{
		String sql = "select * from orderdata where cid=" + id;
		return template.query(sql, new RowMapper<Orderdata>() {
			public Orderdata mapRow(ResultSet rs, int row) throws SQLException {
				Orderdata od = new Orderdata();
				od.setId(rs.getInt(1));
				od.setCid(rs.getInt(2));
				od.setCname(rs.getString(3));
				od.setPid(rs.getInt(4));
				od.setPname(rs.getString(5));
				od.setTid(rs.getLong(6));
				od.setAmount(rs.getInt(7));
				return od;
			}
		});
		
//		List<Orderdata> odlist =
	}
	
	public List<User> getuserdetails() {
		return template.query("select * from user", new RowMapper<User>() {
			public User mapRow(ResultSet rs, int row) throws SQLException {
				User e = new User();
				e.setId(rs.getInt(1));
				e.setName(rs.getString("name"));
				e.setEmail(rs.getString("email"));
				e.setNumber(rs.getLong("number"));
				
				return e;
			}
		});
	}
}
