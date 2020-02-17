package com.test;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

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

		String result = req.getParameter("result");
		String left = null;
		String sep = null;
		String right = null;
		int result1;
	

		String[] spl = { "*", "+", "-", "/" };

		System.out.println("result:"+result);

		for (int i = 0; i < spl.length; i++) {
			int pos = result.indexOf(spl[i]);

			if(pos != -1) {
				left = result.substring(0,pos);
				sep = result.substring(pos,pos+1);
				right = result.substring(pos+1);
				break;

			}

		}

		int left1=Integer.parseInt(left);
		int right1=Integer.parseInt(right);
		
		  if(sep.equals("*")) {
		    result1=left1*right1;
		      
		  }else if(sep.equals("+")) {
			  result1=left1+right1;
			  
		  }else if(sep.equals("-")) {
			  result1=left1-right1;
			  
		  }else {
			  result1=left1/right1;
		  }
		
		  
		  
		System.out.println("left:"+left+" sep:"+sep+" right"+right);

		PrintWriter writer = res.getWriter();

		writer.println(result1);

	}

}
