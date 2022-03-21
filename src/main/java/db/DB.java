package db;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;

import model.*;
import model.Liuyan;
import model.User;

public class DB {
    private static final Object UTC = TimeZone.getTimeZone("UTC");
    Connection ct;
    PreparedStatement pstmt;
    String url;
    String user;
    String password;

    public DB() {
        url = "jdbc:mysql://localhost:3306/liuyan?characterEncoding=UTF-8" + "&serverTimezone=UTC";//“characterEncoding=UTF-8”的目的是防止数据库中的记录中有汉字，设置成gb2312也可以
        user = "root";
        password = "123456";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            ct = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User checkUser(String username, String password) {
        try {
            pstmt = ct.prepareStatement("select * from userTable where username=? and password=?");
            pstmt.setString(1, username);
            pstmt.setString(2, password);//上面写的sql语句中有问号，表示待定值可以使用set方法来确定这个待定的值，比如本行就将第二个问号的值确定为变量password的值
            ResultSet rs = pstmt.executeQuery();
            User user = new User();
            while (rs.next()) {
                user.setId(rs.getInt(1));
                user.setUsername(rs.getString(2));
                user.setPassword(rs.getString(3));
                return user;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList findLyInfo() {
        try {
            pstmt = ct.prepareStatement("select * from lyTable");
            ArrayList al = new ArrayList();

            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {                                   //resultset对象的next方法用于移动游标，每调用一次next方法游标就会移动到下一行
                Liuyan ly = new Liuyan();
                ly.setId(rs.getInt(1));              //该方法的意思是获取当前行的第一个int的值
                ly.setUserId(rs.getInt(2));
                ly.setDate(rs.getString(3));
                ly.setTitle(rs.getString(4));
                ly.setContent(rs.getString(5));
                al.add(ly);
            }
            return al;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getUserName(int id) {
        String username = null;
        try {
            pstmt = ct.prepareStatement("select username from userTable where id=?");
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                username = rs.getString(1);
            }
            return username;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean addInfo(Liuyan ly) {
        try {
            pstmt = ct.prepareStatement("insert into lyTable (userId, date, title, content) values(?,?,?,?)");
            pstmt.setInt(1, ly.getUserId());
            pstmt.setString(2, ly.getDate());
            pstmt.setString(3, ly.getTitle());
            pstmt.setString(4, ly.getContent());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean insertUser(String username, String pwd) {
        try {
            pstmt = ct.prepareStatement("insert into userTable (username, password) values(?,?)");
            pstmt.setString(1, username);
            pstmt.setString(2, pwd);
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean ChangePassword(int userid, String newpwd) {
        try {
            pstmt = ct.prepareStatement("UPDATE userTable SET Password = ? WHERE id =?");
            pstmt.setString(1, newpwd);
            pstmt.setInt(2, userid);
            pstmt.executeUpdate();//根据用户的id来修改密码为newpwd
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean CheckRepeatUser(String username) {
        try {
            pstmt = ct.prepareStatement("select Username from userTable where Username=?");
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();//将数据库中与username同名的记录保存在rs中
            while(rs.next()){
                return false;
            }//如果在while中，说明有重复的记录了，直接返回false
            return true;//否则就会返回true
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean addGoods(Goods Gds){// 资料管理
        try{
            pstmt = ct.prepareStatement("insert into goods (id, goodname, value, date_of_manufacture, quality_guarantee_period, supplier) values(?,?,?,?,?,?)");
            pstmt.setInt(1, Gds.getId());
            pstmt.setString(2, Gds.getGoodname());
            pstmt.setDouble(3, Gds.getValue());
            pstmt.setString(4, Gds.getDate_of_manufacture());
            pstmt.setString(5, Gds.getQuality_guarantee_period());
            pstmt.setString(6, Gds.getSupplier());
            pstmt.executeUpdate();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public ArrayList findgoods(){
        try{
            pstmt = ct.prepareStatement("select * from goods");
            ArrayList al = new ArrayList();
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                Goods Gds = new Goods();
                Gds.setId(rs.getInt(1));
                Gds.setGoodname(rs.getString(2));
                Gds.setValue(rs.getDouble(3));
                Gds.setDate_of_manufacture(rs.getString(4));
                Gds.setQuality_guarantee_period(rs.getString(5));
                Gds.setSupplier(rs.getString(6));
                al.add(Gds);
            }
            return al;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
