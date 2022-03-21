package servlet;

import db.DB;
import model.Goods;
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

public class GoodServlet extends HttpServlet {
    // 参数分别表示web -> java 和 java -> web
//    可以实现链接跳转
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("gb2312");
//        获取request中的int类型
        int id = Integer.parseInt(request.getParameter("id"));
//        接收读入的输入信息
        String Goodname = request.getParameter("Goodname");//此处是HTML标签的name
        double value = Double.parseDouble(request.getParameter("value"));
        String dateStr = request.getParameter("manufacture");

        String supplier = request.getParameter("supplier");

        User user = (User)request.getSession().getAttribute("user");
        Goods Gds = new Goods();
        Gds.setId(user.getId());
//      应该是获取当前时间, 可能有用
//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        Gds.setDate_of_manufacture(date_of_manufacture);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Gds.setDate_of_manufacture((formatter.format(new Date(System.currentTimeMillis()))));
        Gds.setGoodname(Goodname);
        Gds.setSupplier(supplier);
        Gds.setValue(value);
//        Gds.setQuality_guarantee_period(quality_guarantee_period);
        Gds.setQuality_guarantee_period(formatter.format(new Date(System.currentTimeMillis())));
        if(new DB().addGoods(Gds)){
            response.sendRedirect("GoodsSuccess.jsp");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        doGet(request, response);
    }
}
