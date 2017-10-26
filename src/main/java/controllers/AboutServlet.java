package controllers;

import Dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="Controllers.AboutServlet", urlPatterns="/about")
public class AboutServlet extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setAttribute("about", DaoFactory.getAdsDao().all());
       request.getRequestDispatcher("/WEB-INF/ads/about.jsp").forward(request,response);
   }
}

