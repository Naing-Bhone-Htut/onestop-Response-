package com.jdc.scope;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = { "/counter", "/invalidate" })
@SuppressWarnings("serial")
public class CounterServlet extends HttpServlet {

	@Override
	public void init() throws ServletException {
		Counter counter = new Counter(); //name     value
		getServletContext().setAttribute("counter", counter);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ses = req.getSession(true);
		ses.invalidate();
		getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// get object from request scope
		Object obj = req.getAttribute("counter");

		if (null != obj) {
			Counter c = (Counter) obj;
			c.countUp();
		} else {
			Counter c = new Counter();
			c.countUp();
			req.setAttribute("counter", c);
		}

		HttpSession session = req.getSession(true);

		// get obj from session scope
		obj = session.getAttribute("counter");

		if (null != obj) {
			Counter c = (Counter) obj;
			c.countUp();
		} else {
			Counter c = new Counter();
			c.countUp();
			session.setAttribute("counter", c);
		}

		obj = getServletContext().getAttribute("counter");
		Counter c = (Counter) obj;
		c.countUp();

		getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
	}
}