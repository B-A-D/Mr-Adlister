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

@WebServlet(name = "UpdateAdServlet", urlPatterns = "/ads/updateAd")
public class UpdateAdServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // using the ID from the query string
        // call your method findBySpecific
        // use the setters of the ad to change its values
        // Ad ad = DaoFactory....
        // ad.setTitle9request.getParameter("title")));
        Long id= Long.valueOf(request.getParameter("id"));
        Ad ad= DaoFactory.getAdsDao().showSpecificById(id);
        User user= (User) request.getSession().getAttribute("user");
        String title=request.getParameter("title");
        String description=request.getParameter("description");
        String category=request.getParameter("category");
        ad.setTitle(title);
        ad.setDescription(description);
        ad.setCategory(category);
        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/../profile");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id= Long.valueOf(request.getParameter("id"));
        Ad ad= DaoFactory.getAdsDao().showSpecificById(id);
        request.setAttribute("ad",ad);
        if (request.getSession().getAttribute("user") != null) {
            request.getRequestDispatcher("/WEB-INF/ads/update_ad.jsp").forward(request, response);
        }
        else{
            response.sendRedirect("/login");
        }
    }
}
