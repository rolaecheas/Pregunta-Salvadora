package controllers.Access;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserServiceFactory;

import model.entity.*;

import java.util.*;

@SuppressWarnings("serial")
public class AccessControllerAdd extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PersistenceManager pm = PMF.get().getPersistenceManager();

						String query4 = "SELECT FROM " + Rol.class.getName();
						List<Rol> roles = (List<Rol>) pm.newQuery(query4).execute();
						req.setAttribute("roles", roles);
						String query5 = "SELECT FROM " + Resources.class.getName();
						List<Resources> resources = (List<Resources>) pm.newQuery(query5).execute();
						req.setAttribute("resources", resources);
						RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/Views/Access/add.jsp");
						rd.forward(req, resp);
				
	}

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest requ, HttpServletResponse respon) throws IOException, ServletException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		String query = "SELECT FROM " + Access.class.getName();
		List<Access> acces = (List<Access>) pm.newQuery(query).execute();
		String query2 = "SELECT FROM "+ Rol.class.getName();
		List<Rol> role = (List<Rol>)pm.newQuery(query2).execute();
		String query3 = "SELECT FROM "+ Resources.class.getName();
		List<Resources> resou = (List<Resources>)pm.newQuery(query3).execute();
		boolean stat = Boolean.parseBoolean(requ.getParameter("estado"));
		Date fecha = new Date();
		int cont = 0;
		Long idRol = Long.parseLong(requ.getParameter("rol"));
		Long idUrlRecurso = Long.parseLong(requ.getParameter("recurso"));
		for (int i = 0; i < role.size(); i++) {

			if (idRol.equals(role.get(i).getId()))
				idRol = role.get(i).getId();
		}
		for (int i = 0; i < resou.size(); i++) {

			if (idUrlRecurso.equals(resou.get(i).getId()))
				idUrlRecurso = resou.get(i).getId();
		}
		try {
			for (Access ac: acces){
				if(ac.getIdRol() == idRol && ac.getIdUrl() == idUrlRecurso){
					cont++;
					RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/WEB-INF/Views/Access/copiado.jsp");
					rd.forward(requ, respon);
				}		
			}
			if (cont == 0) {
				Access access = new Access(idRol, idUrlRecurso, stat, fecha);
				pm.makePersistent(access);
				pm.close();
				respon.sendRedirect("/access");

			}
		} catch (Exception e) {
			respon.getWriter().println(e.getMessage());
		}
	}
}
