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
import java.util.HashMap;

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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String title=request.getParameter("title");
        String description=request.getParameter("description");
        String category=request.getParameter("category");
        boolean InputHasErrors =
                title.isEmpty()
                        || description.isEmpty()
                        || category.equals("0");

        HashMap<String, String> Errors = new HashMap<>();
        if (title.isEmpty()) {
            Errors.put("title", "Title field cannot be empty!");
        }
        else{
            request.setAttribute("title", title);
        }
        if (description.isEmpty()) {
            Errors.put("description", "Description field cannot be empty!");
        }else{
            request.setAttribute("description", description);
        }
        if (category.equals("0")) {
            Errors.put("category", "Category field cannot be empty!");
        }
        else{
            request.setAttribute("category",category);
        }

        request.setAttribute("Errors", Errors);

        if (InputHasErrors) {
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
            return;
        }

        User user= (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(user.getId(),title,description,category);
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
