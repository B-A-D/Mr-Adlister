package controllers;

import Dao.DaoFactory;
import models.Ad;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Controllers.CreateAdsServlet", urlPatterns = "/ads/create")
public class CreateAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
        }
        else{
            response.sendRedirect("/login");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user= (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description")
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
