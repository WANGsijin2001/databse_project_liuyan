package servlet;

import db.DB;
import model.Goods;
import model.Purchase;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class ReturnServlet extends HttpServlet {
    // 参数分别表示web -> java 和 java -> web
//    可以实现链接跳转
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("gb2312");
//        获取request中的int类型
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");//此处是HTML标签的name
        String tim = request.getParameter("time");
        String supplier = request.getParameter("supply");
        String undertaker = request.getParameter("person");
        double cost = Double.parseDouble(request.getParameter("cost"));

        User user = (User)request.getSession().getAttribute("user");
        Purchase purchase = new Purchase();
        purchase.setId(user.getId());
        purchase.setName(name);
        purchase.setTim(tim);
        purchase.setSupply(supplier);
        purchase.setPerson(undertaker);

        if(new DB().add_return(purchase)){
            response.sendRedirect("success.jsp");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        doGet(request, response);
    }
}
