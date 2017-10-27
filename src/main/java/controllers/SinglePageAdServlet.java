package controllers;

import Dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//Will search the database based on the specific ads id.
@WebServlet(name = "SinglePageAdServlet", urlPatterns = "/ads/id")
public class SinglePageAdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id= Long.valueOf(request.getParameter("id"));
        request.removeAttribute("ad");
        request.setAttribute("ad", DaoFactory.getAdsDao().showSpecificById(id));
        request.getRequestDispatcher("/WEB-INF/ads/single_ad_info_page.jsp").forward(request,response);





    }
}
