/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package get;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author admin
 */
public class ProductGet {

    //check
public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            
            Product product = new Product();
           
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
//check
public ArrayList<Product> getList3ProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product order by product_name LIMIT 3;";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            
            Product product = new Product();
           
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }


//Hiển thị chi tiết sản phẩm


public Product getProduct(long productID) throws SQLException {
     Connection connection = DBConnect.getConnecttion();
     String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
     PreparedStatement ps = connection.prepareCall(sql);
     ResultSet rs = ps.executeQuery();
     Product product = new Product();
     while (rs.next()) {
          product.setProductID(rs.getLong("product_id"));
          product.setCategoryID(rs.getLong("category_id"));
          product.setProductName(rs.getString("product_name"));
          product.setBrandID(rs.getLong("brand_id"));
          product.setProductImage(rs.getString("product_image"));
          product.setProductImageForward(rs.getString("product_image_forward"));
          product.setProductImageBack(rs.getString("product_image_back"));
          product.setProductPrice(rs.getLong("product_price"));
          product.setProductDescription(rs.getString("product_description"));
     }
     return product;
}

    public static void main(String[] args)throws SQLException {
      ProductGet get = new ProductGet();
        for(Product p : get.getListProductByCategory(2)){
        System.out.println(p.getProductID() + " - "+p.getProductName());} 
   
        System.out.println(get.getProduct(1).getProductName());
    }
}
