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
import com.models.Investment;
import com.models.User;
import com.mysql.cj.xdevapi.Statement;

public class AccountingDao {
	JdbcTemplate template;
	public String query;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Accounting> getAccountingApps() {
		return template.query("select * from accounting", new RowMapper<Accounting>() {
			public Accounting mapRow(ResultSet rs, int row) throws SQLException {
				Accounting e = new Accounting();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setDescription(rs.getString(3));
				e.setPrice(rs.getInt(4));
     			e.setImage(rs.getBytes(5));
				return e;
			}
		});
	}
	
	public Blob getPhotobyId(int id) {
		String query = "select image from accounting where id = ?";
		Blob photo = template.queryForObject(query, new Object[] { id }, Blob.class);
		return photo;	
	}
	
//	public void add(Accounting acc) throws FileNotFoundException 
//	{
//		     try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/softwares", "root", "");)
//		        
//		      {		      
//		         // Execute a query
//		    	   query = "insert into accounting (id,name,description,price,image) values(?,?,?,?,?)";
//		            java.sql.PreparedStatement ps = conn.prepareStatement(query);
//		            ps.setInt(1, acc.getId());
//		            ps.setString(2, acc.getName());
//		            ps.setString(3, acc.getDescription());
//		            ps.setInt(4, acc.getPrice());
////		            InputStream in = new FileInputStream("D:/wave.jpg");
////		            ps.setBlob(5, in);
//		            ps.setBytes(5, acc.getImage());  
//
//		            ps.executeUpdate();
//		      } 
//		      catch (SQLException e) 
//		      {
//		         e.printStackTrace();
//		      } 
//	}
	
	
	public void add(Model m) throws FileNotFoundException
	{
		
		  try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/softwares", "root", "");)
        
	      {		      
	         // Execute a query
	    	   query = "insert into accounting (id,name,description,price,image) values(?,?,?,?,?)";
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
	
	
	public Accounting getProductById(int id) {
		String sql = "select * from accounting where id = ?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Accounting>(Accounting.class));
	}
	
	public int delete(Accounting a) {
		String sql = "delete from accounting where id="+ a.getId()+"  ";
		return template.update(sql);
	}

	
}
