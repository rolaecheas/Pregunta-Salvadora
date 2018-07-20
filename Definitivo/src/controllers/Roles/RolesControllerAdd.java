package controllers.Roles;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserServiceFactory;

import model.entity.PMF;
import model.entity.Resources;
import model.entity.Rol;
import java.util.*;

@SuppressWarnings("serial")
public class RolesControllerAdd extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PersistenceManager pm = PMF.get().getPersistenceManager();

						RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/WEB-INF/Views/Roles/add.jsp");
						rd.forward(req, resp);
				
	}
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest requ, HttpServletResponse respon) throws IOException, ServletException {
		PersistenceManager pm= PMF.get().getPersistenceManager();
		String query = "SELECT FROM "+ Rol.class.getName();
		boolean stat=true;
		Date fecha = new Date();
		int cont=0;
		List<Rol> roles = (List<Rol>)pm.newQuery(query).execute();
		try{
			for (Rol rol: roles){
				if(rol.getNombre().equals(requ.getParameter("nombre"))){
					cont++;
					RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/WEB-INF/Views/Roles/copiado.jsp");
					rd.forward(requ, respon);
				}		
			}
			if(cont==0){	
				Rol role= new Rol(requ.getParameter("nombre"),stat,fecha);
				pm.makePersistent(role);
				pm.close();
				respon.sendRedirect("/roles");

			}
		}catch(Exception e){
			respon.getWriter().println(e.getMessage());
		}
	}
}
