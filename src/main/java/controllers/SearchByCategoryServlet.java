package controllers;

import Dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchByCategoryServlet", urlPatterns = "/ads/category")
public class SearchByCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category =request.getParameter("category");
        request.setAttribute("category", category);
        request.setAttribute("ads", DaoFactory.getAdsDao().searchByCategory(category));
        request.getRequestDispatcher("/WEB-INF/ads/user_ads.jsp").forward(request,response);


    }
}
