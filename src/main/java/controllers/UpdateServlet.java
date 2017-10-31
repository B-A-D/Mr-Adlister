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
        if (request.getSession().getAttribute("user") != null) {
            User user = (User) request.getSession().getAttribute("user");
            User user2 = DaoFactory.getUsersDao().findbyUsername(user.getUsername());
            String email = user2.getEmail();
            request.setAttribute("email", email);
            request.getRequestDispatcher("/WEB-INF/update_user.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String email = request.getParameter("email").trim();

            boolean InputHasErrors = email.isEmpty();

            if (InputHasErrors) {
                request.setAttribute("error", "Email cannot be empty");
                request.getRequestDispatcher("/WEB-INF/update_user.jsp").forward(request, response);
                return;
            }

            // get a user object
        User user = (User)request.getSession().getAttribute("user");
            Long userID = user.getId();
            DaoFactory.getUsersDao().updateEmail(email, userID);
            response.sendRedirect("/profile");
        }
}

