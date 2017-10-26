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
import java.util.HashMap;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {

        String username = request.getParameter("username").trim();
        String email = request.getParameter("email").trim();
        String password = request.getParameter("password").trim();
        String passwordConfirmation = request.getParameter("confirm_password");


        if (DaoFactory.getUsersDao().findbyUsername(username) != null) {
            request.setAttribute("error", username + "is already taken! Please try another");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }

        //validate input
        boolean InputHasErrors =
                username.isEmpty()
                        || email.isEmpty()
                        || password.isEmpty()
                        || !passwordConfirmation.equals(password);

        HashMap<String, String> Errors = new HashMap<>();
        if (username.isEmpty()) {
            Errors.put("username", "Username field cannot be empty!");
        }
        if (email.isEmpty()) {
            Errors.put("email", "Email field cannot be empty!");
        }
        if (password.isEmpty()) {
            Errors.put("password", "Password field cannot be empty!");
        }
        if (!passwordConfirmation.equals(password)) {
            Errors.put("password_confirm", "Passwords must match!");
        }

        request.setAttribute("Errors", Errors);
//        request.setAttribute("username", username);
//        request.setAttribute("email", email);
        if (InputHasErrors) {
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
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