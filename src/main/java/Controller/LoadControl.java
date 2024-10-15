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

@WebServlet(name = "LoadControl", value = "/loadProduct")
public class LoadControl  extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("pid");
        Dao dao = new Dao();
        Product p = dao.getProductbyID(id);
        request.setAttribute("detail",p);
        request.getRequestDispatcher("edit.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Dao dao = new Dao();

    }
}
