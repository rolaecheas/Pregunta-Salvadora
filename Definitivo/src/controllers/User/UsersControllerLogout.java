package controllers.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class UsersControllerLogout extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserService us= UserServiceFactory.getUserService();
		User user= us.getCurrentUser(); // este users es de app engine
		if(user==null){
			resp.sendRedirect(us.createLoginURL("/users/login"));
		}else {
			resp.sendRedirect(us.createLogoutURL("/users/login"));
		}
	}
}
