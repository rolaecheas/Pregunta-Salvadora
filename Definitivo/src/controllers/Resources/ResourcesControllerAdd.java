package controllers.Resources;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserServiceFactory;

import model.entity.PMF;
import model.entity.Resources;
import java.util.*;

@SuppressWarnings("serial")
public class ResourcesControllerAdd extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		PersistenceManager pm = PMF.get().getPersistenceManager();

						RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/WEB-INF/Views/Resources/add.jsp");
						rd.forward(req, resp);
			
	}
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest requ, HttpServletResponse respon) throws IOException, ServletException {
		PersistenceManager pm= PMF.get().getPersistenceManager();
		String query = "SELECT FROM "+ Resources.class.getName();
		Date fecha = new Date();
		int cont=0;
		List<Resources> res = (List<Resources>)pm.newQuery(query).execute();
		try{
			for (Resources resour: res){
				if(resour.getUrl().equals(requ.getParameter("url"))){
					cont++;
					RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/WEB-INF/Views/Resources/copiado.jsp");
					rd.forward(requ, respon);
				}		
			}
			if(cont==0){	
				Resources resour= new Resources(requ.getParameter("url"),true,fecha);
				pm.makePersistent(resour);
				pm.close();
				respon.sendRedirect("/resources");

			}
		}catch(Exception e){
			respon.getWriter().println(e.getMessage());
		}
	}
}
