package Controller;
import DaoControl.Dao;
import enity.Accounts;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SignUpControl", value = "/sign-up")
public class SignUpControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");


    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Register.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("repass");
        if(!pass.equals(re_pass)){
           request.setAttribute("mess","mat khau khong trung !!");
           request.getRequestDispatcher("Register.jsp").forward(request,response);
        }else{
            Dao dao = new Dao();
            Accounts a = dao.checkAccountsExist(user);
            if(a == null){
                dao.signup(user,pass);
                response.sendRedirect("log-in");
            }else{
                dao.InsertAccount(user,pass);
                response.sendRedirect("Register.jsp");
            }
        }
    }
}
