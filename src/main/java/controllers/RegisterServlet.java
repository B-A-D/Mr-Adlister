package controllers;

import Dao.DaoFactory;
import org.mindrot.jbcrypt.BCrypt;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");


        if (DaoFactory.getUsersDao().findbyUsername(username) != null) {
            throw new RuntimeException("That username is already taken! Please try another");
        }

        //validate input
        boolean InputHasErrors =
                username.isEmpty()
                        || email.isEmpty()
                        || password.isEmpty()
                        || !passwordConfirmation.equals(password);

        if (InputHasErrors) {
            response.sendRedirect("/register");
            return;
        }
        int numberOfRounds = 12;
        String hash = BCrypt.hashpw(password, BCrypt.gensalt(numberOfRounds));

        User user = new User(username, hash, email);
        DaoFactory.getUsersDao().insert(user);

        request.getSession().setAttribute("user", user);
        response.sendRedirect("/profile");
    }
}