package app;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import data.questions;

@WebServlet(urlPatterns = {
	"/addquestion", "/deletequestion","/updatequestion","/readquestion","/read1question"
	})
public class HandleQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	  public void doPost(HttpServletRequest request, HttpServletResponse response) 
	      throws IOException, ServletException {
		  doGet(request, response);
	  }
	
	 @Override
	 public void doGet(HttpServletRequest request, HttpServletResponse response) 
	     throws IOException, ServletException {
	 String action = request.getServletPath();
	 List<questions> list=null;
	 switch (action) {
	 	case "/addquestion":
	  		list=addquestion(request);break;
	  	case "/deletequestion":
	  		String id=request.getParameter("questionid");
	  		list=deletequestion(request);break;
	  	case "/updatequestion":
	  		list=updatequestion(request);break;
	  	case "/readquestion":
	  		list=readquestion(request);break;
	  	case "/read1question":
	  		questions f=read1question(request);
	  		request.setAttribute("fish", f);
	  		RequestDispatcher rd=request.getRequestDispatcher("./jsp/fishtoupdateform.jsp");
	  		rd.forward(request, response);
	  		return;
	  	}
	 request.setAttribute("fishlist", list);
	 RequestDispatcher rd=request.getRequestDispatcher("./jsp/fishform.jsp");
	 rd.forward(request, response);
	 }
	 
	 private questions read1question(HttpServletRequest request) {
			String id=request.getParameter("id");
			String uri = "http://127.0.0.1:8080/rest/questionlistservice/read1question/"+id;
			Client c=ClientBuilder.newClient();
			WebTarget wt=c.target(uri);
			Builder b=wt.request();
			questions fish=b.get(questions.class);
			return fish;
		}
	 
	 private List<questions> addquestion(HttpServletRequest request) {
			//A Fish object to send to our web-service 
			questions f=new questions(request.getParameter("questionId"), request.getParameter("question"));
			System.out.println(f);
			String uri = "http://127.0.0.1:8080/rest/questionlistservice/addquestions";
			Client c=ClientBuilder.newClient();
			WebTarget wt=c.target(uri);
			Builder b=wt.request();
			//Here we create an Entity of a Fish object as JSON string format
			Entity<questions> e=Entity.entity(f,MediaType.APPLICATION_JSON);
			//Create a GenericType to be able to get List of objects
			//This will be the second parameter of post method
			GenericType<List<questions>> genericList = new GenericType<List<questions>>() {};
			
			//Posting data (Entity<ArrayList<DogBreed>> e) to the given address
			List<questions> returnedList=b.post(e, genericList);
			return returnedList;
		}
	 
	 private List<questions> readquestion(HttpServletRequest request) {
			String id=request.getParameter("id");
			String uri = "http://127.0.0.1:8080/rest/fishservice/readquestion";
			Client c=ClientBuilder.newClient();
			WebTarget wt=c.target(uri);
			Builder b=wt.request();
			//Create a GenericType to be able to get List of objects
			//This will be the second parameter of post method
			GenericType<List<questions>> genericList = new GenericType<List<questions>>() {};
			List<questions> returnedList=b.get(genericList);
			return returnedList;
		}
	 
	 private List<questions> updatequestion(HttpServletRequest request) {
			//A Fish object to send to our web-service 
		 	questions f=new questions(request.getParameter("id"), request.getParameter("breed"), request.getParameter("weight"));
			System.out.println(f);
			String uri = "http://127.0.0.1:8080/rest/fishservice/updatefish";
			Client c=ClientBuilder.newClient();
			WebTarget wt=c.target(uri);
			Builder b=wt.request();
			//Here we create an Entity of a Fish object as JSON string format
			Entity<questions> e=Entity.entity(f,MediaType.APPLICATION_JSON);
			//Create a GenericType to be able to get List of objects
			//This will be the second parameter of post method
			GenericType<List<questions>> genericList = new GenericType<List<questions>>() {};
			
			//Posting data (Entity<ArrayList<DogBreed>> e) to the given address
			List<questions> returnedList=b.put(e, genericList);
			return returnedList;
		}
	 
	 private List<questions> deletequestion(HttpServletRequest request) {
			String id=request.getParameter("id");
			String uri = "http://127.0.0.1:8080/rest/fishservice/deletefish/"+id;
			Client c=ClientBuilder.newClient();
			WebTarget wt=c.target(uri);
			Builder b=wt.request();
			//Create a GenericType to be able to get List of objects
			//This will be the second parameter of post method
			GenericType<List<questions>> genericList = new GenericType<List<questions>>() {};
			//Posting data (Entity<ArrayList<DogBreed>> e) to the given address
			List<questions> returnedList=b.delete(genericList);
			return returnedList;
		}
}
