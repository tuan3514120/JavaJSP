package Controller;
import  DaoControl.Dao;
import enity.Accounts;
import enity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerControl", value = "/manager")
public class ManagerControl extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Accounts a = (Accounts) session.getAttribute("acc");
        int id = a.getId();
        Dao dao = new Dao();
        List<Product> list = dao.getProductbySellID(id);
        request.setAttribute("listP", list);
        request.getRequestDispatcher("manager.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Dao dao = new Dao();

    }
}
