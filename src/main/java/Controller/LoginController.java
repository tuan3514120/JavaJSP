package Controller;

import DaoControl.Dao;
import enity.Accounts;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "login", value = "/log-in")
public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        Dao dao = new Dao();
        Accounts a = dao.login(username,password);
        if (a == null) {
            request.setAttribute("mess", "Invalid username or password!");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc",a);
            session.setMaxInactiveInterval(1000);
           response.sendRedirect("trang-chu");
        }
    }


}
