package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVo;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		response.setContentType("application/json");
		//id, pwd 정합성 체크
		boolean result = id.equals("test@naver.com");
		HttpSession session = request.getSession();
		if(result) {
			
			UserVo user = new UserVo();
			user.setId(id);
			user.setName("구호정");
			
			session.setAttribute("user", user);
			
			PrintWriter out = response.getWriter();
			Gson gson = new Gson();
			JsonObject object = new JsonObject();
			object.addProperty("id", id);
			String json = gson.toJson(object);
			System.out.println(json);
			out.println(json);


		} else {
			PrintWriter out = response.getWriter();
			Gson gson = new Gson();
			JsonObject object = new JsonObject();
			object.addProperty("msg", "error");
			String json = gson.toJson(object);
			System.out.println(json);
			out.println(json);
		}

	}

}
