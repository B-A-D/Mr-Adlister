package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.Vote", urlPatterns = "/Vote")
public class VoteServlet extends HttpServlet {
    private int counter = 0;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String button = request.getParameter("button");
        if ("button1".equals(button)) {
            counter++;
        } else {
            counter--;
        }
        response.sendRedirect("/ads/users?username="+ request.getParameter("username") + "&votes=" + counter);
    }
}
