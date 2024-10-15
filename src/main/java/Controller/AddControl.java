package Controller;

import DaoControl.Dao;
import enity.Accounts;
import enity.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddControl", value = "/add")
public class AddControl extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("manager.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        String price = request.getParameter("price");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        HttpSession session = request.getSession();
        Accounts a = (Accounts) session.getAttribute("acc");
        int sid = a.getId();
        Dao dao = new Dao();
        dao.insertProduct(name,image,price,title,description,sid);
        response.sendRedirect("manager");

    }
}
