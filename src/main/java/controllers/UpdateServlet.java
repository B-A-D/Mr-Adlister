package controllers;

import Dao.DaoFactory;
import models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "controllers.UpdateServlet", urlPatterns = "/updateuser")
public class UpdateServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        request.getRequestDispatcher("/WEB-INF/update_user.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            User loggedinUser = (User) request.getSession().getAttribute("user");
            String username = request.getParameter("username").trim();
            String email = request.getParameter("email").trim();
            String password = request.getParameter("password").trim();
            String passwordConfirmation = request.getParameter("confirm_password");

            boolean InputHasErrors =
                    username.isEmpty()
                            || email.isEmpty()
                            || password.isEmpty()
                            || !passwordConfirmation.equals(password);

            HashMap<String, String> Errors = new HashMap<>();
            if (username.isEmpty()) {
                Errors.put("username", "Username field cannot be empty!");
            } else {
                request.setAttribute("username", username);
            }
            if (email.isEmpty()) {
                Errors.put("email", "Email field cannot be empty!");
            } else {
                request.setAttribute("email", email);
            }
            if (password.isEmpty()) {
                Errors.put("password", "Password field cannot be empty!");
            }
            if (!passwordConfirmation.equals(password)) {
                Errors.put("password_confirm", "Passwords must match!");
            }

            request.setAttribute("Errors", Errors);

            if (InputHasErrors) {
                request.getRequestDispatcher("/WEB-INF/update_user.jsp").forward(request, response);
                return;
            }


            int numberOfRounds = 12;
            String hash = BCrypt.hashpw(password, BCrypt.gensalt(numberOfRounds));


            User user = new User(loggedinUser.getId(), username, hash, email);
            DaoFactory.getUsersDao().update(user);

            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
        }
}

