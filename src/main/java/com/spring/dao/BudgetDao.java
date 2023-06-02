package com.spring.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.ui.Model;

import com.models.Accounting;
import com.models.Budget;



public class BudgetDao {
	JdbcTemplate template;
	public String query;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Budget> getBudgetApps() {
		return template.query("select * from budget", new RowMapper<Budget>() {
			public Budget mapRow(ResultSet rs, int row) throws SQLException {
			 Budget e = new Budget();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setDescription(rs.getString(3));
				e.setPrice(rs.getInt(4));
     			e.setImage(rs.getBytes(5));
				return e;
			}
		});
	}
	

	public void add(Model m) throws FileNotFoundException
	{
		
		  try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/softwares", "root", "");)
        
	      {		      
	         // Execute a query
	    	    query = "insert into budget (id,name,description,price,image) values(?,?,?,?,?)";
	            java.sql.PreparedStatement ps = conn.prepareStatement(query);
	            String name=(String) m.getAttribute("name");
	            String desc=(String) m.getAttribute("desc");
	            int price=(int) m.getAttribute("price");
	            File file=(File) m.getAttribute("image");
	            int id=15;
	            
	            String path="D:/"+file.getPath();
	            
	            System.out.println(path);
	            InputStream in = new FileInputStream(path);
	            
	            
	            ps.setInt(1,id);
	            ps.setString(2, name);
	            ps.setString(3, desc);
	            ps.setInt(4, price);
	            ps.setBlob(5, in);
	            ps.executeUpdate();
	      } 
	      catch (SQLException e) 
          {
	         e.printStackTrace();
	      } 
	}
	
	
	public Blob getPhotobyId(int id) {
		String query = "select image from budget where id = ?";
		Blob photo = template.queryForObject(query, new Object[] { id }, Blob.class);
		return photo;	
	}
	
	public Budget getProductById(int id) {
		String sql = "select * from budget where id = ?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Budget>(Budget.class));
	}
	
	public int delete(Budget b) {
		String sql = "delete from budget where id="+ b.getId()+"  ";
		return template.update(sql);
	}
	
}
