
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;
import db.DB;
import model.Liuyan;
import model.User;

public class AddServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("gb2312");

        //response.setContentType("gb2312");

        String title=request.getParameter("title");

        String content=request.getParameter("content");

        User user=(User) request.getSession().getAttribute("user");

        Liuyan ly=new Liuyan();
        ly.setUserId(user.getId());
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ly.setDate(formatter.format(new Date(System.currentTimeMillis())));
        ly.setTitle(title);
        ly.setContent(content);

        if(new DB().addInfo(ly)){
            response.sendRedirect("success.jsp");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }
}
