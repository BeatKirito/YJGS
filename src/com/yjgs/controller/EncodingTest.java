package com.yjgs.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by beatkirito on 2016/3/26.
 */
public class EncodingTest extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        req.setCharacterEncoding("UTF-8");
        String s = req.getParameter("test");
        String s2 = new String(s.getBytes("ISO-8859-1"),"ASCII");
        System.out.println("注意看这里 " + s);
    }
}
