package com.test;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = { "/CalcServlet.do" })
public class TestServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");

		    int left = Integer.parseInt(req.getParameter("left"));
	        String sep =req.getParameter("sep");
	        int right = Integer.parseInt(req.getParameter("right"));
	        int result;
	   
	        if(sep.equals("*")) {
	            result=left*right;

	        }else if(sep.equals("+")) {
	            result=left+right;

	        }else if(sep.equals("-")) {
	            result=left-right;

	        }else {
	            result=left/right;
	        }



	        System.out.println("left:"+left+" sep:"+sep+" right"+right);

	        PrintWriter writer = res.getWriter();

	        writer.println(result);


	}

}
