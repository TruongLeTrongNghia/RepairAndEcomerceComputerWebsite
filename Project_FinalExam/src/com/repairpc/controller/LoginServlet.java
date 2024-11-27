package com.repairpc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.repairpc.model.User;
import com.repairpc.model.UserManager;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("username");
		String passwd = request.getParameter("password");
		String url = "/login.jsp";
		String e = "";
		HttpSession session = request.getSession();
		UserManager userManager = new UserManager();
		List<User> users = userManager.getUsers();
		User user = userManager.findUser(userName);
		if (user != null) {
			if (user.getPassword().equals(passwd)) {
				url = "/index.jsp";
				session.setAttribute("au", true);
				session.setAttribute("user", user);
				session.setAttribute("users", users);
			}

			else {
				e = "Sai Username hoặc password! ";
			}
		} else {
			e = "Tài khoản không tồn tại, hoặc phiên làm việc đã hết hạn, vui lòng đăng nhập lại";
		}
		request.setAttribute("error", e);
		request.setAttribute("username", userName);
		request.setAttribute("password", passwd);
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
