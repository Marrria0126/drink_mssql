package com.southwind.drinkshop.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.southwind.drinkshop.entity.User1;
import com.southwind.drinkshop.service.CartService;
import com.southwind.drinkshop.service.ProductCategoryService;
import com.southwind.drinkshop.service.ProductService;
import com.southwind.drinkshop.vo.TableDataVO;
import com.southwind.drinkshop.vo.TableProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Yihong
 * @since 2021-03-06
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;
    @Autowired
    private ProductCategoryService productCategoryService;
    @Autowired
    private CartService cartService;

    @GetMapping("/list/{type}/{id}")
    public ModelAndView list(
              @PathVariable("type") String type,
              @PathVariable("id") Integer id,
              HttpSession session
    ) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productList");
        modelAndView.addObject("productList", productService.findByCategoryId(type, id));
        modelAndView.addObject("list", productCategoryService.getAllProductCategoryVO());
        User1 user = (User1)session.getAttribute("user");
        if(user == null){
            modelAndView.addObject("cartList",new ArrayList<>());
        }else{
            modelAndView.addObject("cartList",cartService.findAllCartVOByUserId(user.getId()));
        }
        return modelAndView;
    }
    @PostMapping("/findByKey")
    public ModelAndView findByKey(String keyWord,HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productList");
        //根据关键字查询
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.like("name",keyWord);
        modelAndView.addObject("productList",productService.list(wrapper));
        modelAndView.addObject("list",productCategoryService.getAllProductCategoryVO());
        User1 user = (User1)session.getAttribute("user");
        if(user == null){
            modelAndView.addObject("cartList",new ArrayList<>());
        }else{
            modelAndView.addObject("cartList",cartService.findAllCartVOByUserId(user.getId()));
        }
        return modelAndView;
    }

    //
        @GetMapping("/findById/{id}")
        public ModelAndView findById(@PathVariable("id") Integer id,HttpSession session){
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("productDetail");
            modelAndView.addObject("product", productService.getById(id));
            modelAndView.addObject("list",productCategoryService.getAllProductCategoryVO());
            User1 user = (User1)session.getAttribute("user");
         if(user == null){
            modelAndView.addObject("cartList",new ArrayList<>());
        }else{
            modelAndView.addObject("cartList",cartService.findAllCartVOByUserId(user.getId()));
        }
            return modelAndView;
        }

    @RequestMapping("/findAllTableProduct")
    @ResponseBody
    public TableDataVO<TableProductVO> findAllTableProduct(Integer page,Integer limit){
        return productService.findAllTableData(page, limit);
    }
}


