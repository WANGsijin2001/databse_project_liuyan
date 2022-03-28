package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import model.User;
import db.DB;

/**
 * Servlet implementation class servlet.MainServlet
 */
//@WebServlet("/servlet.MainServlet")
public class MainServlet extends HttpServlet {

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("gb2312");
        //response.setContentType("gb2312");
        String username=request.getParameter("username");
        String pwd=request.getParameter("password");
        DB db=new DB();
        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("user");
        if(user==null) {
            user = db.checkUser(username, pwd);
        }
        session.setAttribute("user", user);
        if(user!=null){
            ArrayList al=db.findLyInfo();
            ArrayList al2 = db.findgoods();
            ArrayList al3 = db.findpurchase();
            ArrayList al4 = db.findstock();
            ArrayList al5 = db.find_return();
            session.setAttribute("al", al);
            session.setAttribute("al2", al2);
            session.setAttribute("al3", al3);// 采购订单
            session.setAttribute("al4", al4);// 进货单
            session.setAttribute("al5", al5);// 退货信息
            //System.out.println("登陆成功！");
            response.sendRedirect("index.jsp");
        }
        else{
            //System.out.println("登陆失败！");
            response.sendRedirect("login.jsp");
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

}
