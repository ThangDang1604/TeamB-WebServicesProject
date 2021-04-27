package REST;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/hello")
public class Hello {
	@GET
	@Path("/checking")
	@Produces(MediaType.TEXT_PLAIN)
	public String Checking() {
		return "This works alright";
	}
}
