
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;
import db.DB;

public class PasswordServlet extends HttpServlet {

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("gb2312");
        //response.setContentType("gb2312");
        DB db=new DB();
        String pwd=request.getParameter("origin_password");//获取用户输入的原密码
        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("user");//获取当前登录的用户
        user = db.checkUser(user.getUsername(), pwd);//检查用户输入的原密码是否正确
        if(user!=null) {
            String newpwd=request.getParameter("password");//获取用户修改之后的密码
            String con_newpwd=request.getParameter("confirm_password");//获取用户修改之后的确认密码
            if(!newpwd.equals(con_newpwd)){
                response.sendRedirect("changepassword.jsp");//修改后的密码和确认密码不一致，重新返回修改密码界面
            }
            else{
                System.out.println("3");
                db.ChangePassword(user.getId(), newpwd);//调用db类方法修改数据库记录实现密码修改
                response.sendRedirect("Change_success.jsp");//返回密码修改成功界面
            }
        }
        else{
            response.sendRedirect("changepassword.jsp");//如果用户输入的原密码不正确就重新返回修改密码页面
        }
    }
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}