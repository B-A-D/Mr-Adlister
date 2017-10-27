package controllers;

import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
import Dao.DaoFactory;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF//login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findbyUsername(username);


        if (user == null){
            request.setAttribute("nouser", "Sorry, that username doesn't exist");
            request.getRequestDispatcher("/WEB-INF//login.jsp").forward(request, response);
            return;
        }
        boolean validAttempt = password.equals(user.getPassword());

        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
        } else {
            request.setAttribute("error", "Incorrect Password! Please try again");
            request.setAttribute("username", username);
            request.getRequestDispatcher("/WEB-INF//login.jsp").forward(request, response);
            return;
        }
    }
}
