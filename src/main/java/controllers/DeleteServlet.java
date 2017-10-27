package controllers;

import Dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.DeleteServlet", urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            DaoFactory.getAdsDao().delete((Long.parseLong(request.getParameter("id"))));
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF//login.jsp").forward(request, response);
    }

}
