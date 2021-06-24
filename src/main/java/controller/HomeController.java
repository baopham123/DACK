/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDao;
import java.util.List;
import model.Product;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class HomeController {
     private static final Logger logger = Logger.getLogger(HomeController.class);

    @Autowired
    ProductDao daopr;
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public ModelAndView getAllTable(){
        logger.info("Xu ly lay danh sach san pham");
        List<Product> lst = daopr.getAllProductList();
        return new ModelAndView("home", "listpr",lst);
        
    }
}
