package controllers.User;


import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.users.UserServiceFactory;

import model.entity.*;

@SuppressWarnings("serial")
public class UsersControllerView extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();

						User users = pm.getObjectById(User.class, Long.parseLong(req.getParameter("id")));
						pm.close();
						req.setAttribute("users", users);
						RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/Views/User/view.jsp");
						rd.forward(req, resp);
				
	}
}