package Controller;

import DaoControl.Dao;
import enity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "HomeControl", value = "/home")

public class HomeControl extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Dao dao = new Dao();
            List<Product> list = dao.getAllProduct();
            request.setAttribute("listP",list);
            request.getRequestDispatcher("trangchu.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Dao dao = new Dao();

    }
}

