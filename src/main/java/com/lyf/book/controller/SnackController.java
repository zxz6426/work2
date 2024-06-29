package com.lyf.book.controller;

import com.lyf.book.pojo.Snack;
import com.lyf.book.service.SnackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class SnackController {
    @Autowired
    private SnackService snackService;

    @GetMapping("/login")
    public String showLoginForm() {
        return "login"; // 返回登录页面login.jsp
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password) {
        // 这里假设简单的账号密码验证逻辑
        if ("admin".equals(username) && "123456".equals(password)) {
            return "redirect:/abcSnack"; // 登录成功跳转到选择零食页面
        } else {
            return "redirect:/login?error"; // 登录失败重定向回登录页面并带上错误参数
        }
    }

    @GetMapping("/abcSnack")
    public String showSnacks(Model model){
        List<Snack> snacks = snackService.querySnacks();
        model.addAttribute("snacks", snacks);
        return "list";
    }

    @PostMapping("/delSnack")
    @ResponseBody
    public String delSnacks(int bid){
        if(snackService.deleteSnacks(bid)){
            return "success";
        }
        return "faild";
    }

    @PostMapping("/saveSnack")
    public String saveSnack(Snack snack){
        if(snackService.addSnacks(snack)){
            return "redirect:/abcSnack";
        }
        return "add";
    }

    @PostMapping("/updateSnack")
    public String updSnack(Snack snack){
        if(snackService.updateSnacks(snack)){
            return "redirect:/abcSnack";
        }
        return "update";
    }
//
//    @GetMapping("/selSnack")
//    public String selSnack(Snack snack){
//        if(snackService.selectSnacks(snack)){
//            return "sel";
//        }
//        return "faild";
//    }

//    @GetMapping("/snack/{id}")
//    public String showSnackById(@PathVariable("id") Long bid, Model model) {
//        Snack snack = snackService.getSnackById(bid);
//        if (snack != null) {
//            model.addAttribute("snack", snack);
//            return "snackDetails"; // 返回一个展示单个零食信息的页面，例如 snackDetails.jsp
//        } else {
//            return "snackNotFound"; // 如果找不到对应ID的零食信息，返回一个提示页面
//        }
//    }




}
