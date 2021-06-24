/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import model.Product;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Admin
 */
public class ProductDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    
     public List<Product> getAllProductList() {
        return template.query("select * from product", new RowMapper<Product>() {
            public Product mapRow(ResultSet rs, int row) throws SQLException {
                Product pr = new Product();
                pr.setId(rs.getInt(1));
                pr.setProductName(rs.getString(2));
                pr.setPrice(rs.getDouble(3));
                pr.setLastPrice(rs.getDouble(4));
                pr.setImage(rs.getString(5));
                pr.setDescription(rs.getString(6));
                return pr;
            }
        });
    }
}
