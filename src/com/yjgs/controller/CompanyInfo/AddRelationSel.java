package com.yjgs.controller.CompanyInfo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yjgs.bll.CompanyInfoManagerBll;
import com.yjgs.dcl.CompanyInfo;
import com.yjgs.enumdata.CompanyInfoType;

/**
 * Servlet implementation class AddRelationSel
 */
public class AddRelationSel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRelationSel() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] content1 = request.getParameterValues("content1");
		String[] content2 = request.getParameterValues("content2");
		int t = 0;
		CompanyInfo companyInfo = new CompanyInfo();
		CompanyInfoManagerBll cInfoManagerBll = new CompanyInfoManagerBll();
		CompanyInfoType cIType = null;
		
		for(t=0;t<content1.length;t++){
			if(content1[t]==""){
			request.setAttribute("judge", "false");
			request.setAttribute("text", "联系方式不能为空！");
			request.setAttribute("URL", "../CompanyInfo/AddRelationSel.jsp");
			request.getRequestDispatcher("../Master/handlePage.jsp").forward(
					request, response);
			return;}
		}
		
		for(t=0;t<content2.length;t++){
			if(content2[t]==""){
			request.setAttribute("judge", "false");
			request.setAttribute("text", "联系方式不能为空！");
			request.setAttribute("URL", "../CompanyInfo/AddRelationSel.jsp");
			request.getRequestDispatcher("../Master/handlePage.jsp").forward(
					request, response);
			return;}
		}
		for(t=0;t<content1.length;t++){
			
			String allcontent = content1[t]+":"+content2[t];
			companyInfo.setInfoContent(allcontent);
			companyInfo.setInfoType(cIType.CONTACTS);
			try {
				
				if(cInfoManagerBll.AddText(companyInfo)){
					System.out.println("新增联系方式成功！");
				}
				
			} catch (Exception e) {
				
				System.out.println("新增联系方式出错！");
				e.printStackTrace();;
			}
			
		}
		
		if(t==content1.length){
			
			request.setAttribute("judge", "true");
			request.setAttribute("text", "联系方式添加成功！");
			request.setAttribute("URL", "../CompanyInfo/AddCompanyRelation.jsp");
			request.getRequestDispatcher("../Master/handlePage.jsp").forward(
					request, response);
			return;
		}
		
			request.setAttribute("judge", "false");
			request.setAttribute("text", "联系方式添加失败！");
			request.setAttribute("URL", "../CompanyInfo/AddCompanyRelation.jsp");
			request.getRequestDispatcher("../Master/handlePage.jsp").forward(
					request, response);
			return;
		
	}

}
