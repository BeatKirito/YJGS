package com.yjgs.controller.findPwd_complaint;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yjgs.bll.ManagerBll;
import com.yjgs.dal.ManagerDal;
import com.yjgs.dcl.Manager;
import com.yjgs.publ.MD5;

/**
 * Servlet implementation class FindPwd3Sel
 */
public class FindPwd3Sel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwd3Sel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String userPwd = request.getParameter("userPwd");
		String againPwd = request.getParameter("againPwd");
		
		int userID=0;
		
		try {
			HttpSession session = request.getSession();
			userID = (Integer)session.getAttribute("UserID");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("judge", "false");
			request.setAttribute("text", "错误的操作");
			request.setAttribute("URL", "../FindPwdComplaint/FindPwd.jsp");
			request.getRequestDispatcher("../Tips/ErrorTips.jsp").forward(
					request, response);
			return;
		}
		
		
		//验证密码不为空
		if(userPwd==""||againPwd==""){
			
			String errorInfo = String.format("FindPwd3.jsp?errorInfo=%s","密码不能为空！");
			request.getRequestDispatcher(errorInfo).forward(request, response);
			return ;
		}
		
		//验证输入的两次密码相同
		if(!userPwd.equals(againPwd)){
					
			String errorInfo = String.format("FindPwd3.jsp?errorInfo=%s","前后密码不相同！");
			request.getRequestDispatcher(errorInfo).forward(request, response);
			return ;
		}
		
		if(userPwd.equals(againPwd)){
			
			Manager fManager = new Manager();
			fManager.setManagerID(userID);
			fManager.setPassword(MD5.GetMD5Code(userPwd));		//MD5加密密码
			
			ManagerBll mBll = new ManagerBll();
			
			try{
				
				boolean isTrue = mBll.UpdatePwd(fManager);
				
				if(isTrue == true){
					
					Manager manager = new Manager();
					ManagerDal mDal = new ManagerDal();
					manager.setManagerID(userID);
					manager = mDal.getAManager(manager);
					
					HttpSession session  = request.getSession();

					session.setAttribute("UserID", manager.getManagerID());
					session.setAttribute("UserName",
							manager.getManagerName());
					session.setAttribute("UserLevel",
							manager.getManagerLevel());
					session.setAttribute("Permission",
							mBll.getPermissionStatus(manager));
					session.setMaxInactiveInterval(30 * 60);
					
					response.sendRedirect("../ManagerLogin/ManagerLogin.jsp");
					return;
				}
				else {
					String errorInfo = String.format("FindPwd3.jsp?errorInfo=%s","密码错误！");
					request.getRequestDispatcher(errorInfo).forward(request, response);
					return;
				}
			
			}
			catch(Exception e){
				
				e.printStackTrace();
				System.out.print("业务逻辑层查询失败");
			}
		}
	
	}

}
