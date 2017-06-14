package akj;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *  sevlet接口（把前端数据传递到后台）
 * Created by 程森 on 2017/5/19.
 */
public class AkjLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //    super.doGet(req, resp);
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        String name = req.getParameter("akjname");
        String password = req.getParameter("akjpassword");
        if ("admin".equals(name) && "admin".equals(password)) {
            req.setAttribute("names", name);
            req.getRequestDispatcher("AkjMain.jsp").forward(req, resp);
            // resp.sendRedirect("Main.jsp");
            return;
        }
        resp.sendRedirect("AkjLogin.jsp");
        return;
    }
}
