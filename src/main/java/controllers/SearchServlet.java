package controllers;

import Dao.DaoFactory;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Controllers.SearchServlet", urlPatterns = "/ads/search")
public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchTerm = request.getParameter("search");
        List<Ad> ads = DaoFactory.getAdsDao().search(searchTerm);
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
