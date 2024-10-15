package DaoControl;

import DaoConnect.DaoConnection;
import enity.Accounts;
import enity.Product;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
            return list;
        }

        public void InsertAccount(String Username, String pass){
        String qr="INSERT INTO Account([user],pass)\n" +
                "VALUES (?,?);";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1, Username);
            ps.setString(2, pass);
            ps.executeUpdate();
        }catch (Exception e){

        }

        }
    public List<Product> getProductbySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                +   "where sell_ID =?";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt( 1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Product getProductbyID(String id) {

        String query = "select * from product\n"
                +   "where id =?";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString( 1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }


    public Accounts login(String user, String pass) {

        String query = "select * from Account\n "
                    + "where [user]= ? \n"
                    + "and pass= ?";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Accounts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public Accounts checkAccountsExist(String user) {

        String query = "select * from Account\n "
                + "where [user]= ? \n";

        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Accounts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void signup(String user, String pass){
        String query ="insert into Account\n"
                +   "values(?,?,0,0)";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
    public void deleteProduct(String pid){
        String query ="delete from product\n"
                + "where id = ?";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    public void insertProduct(String name, String image, String price,String title,
                               String description, int sid) {
        String query = "INSERT [dbo].[product] \n"
                + "([name],[image],[price],[title],[description],[sell_ID])\n"
                + "VALUES(?,?,?,?,?,?)";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setInt(6, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void editProduct(String name, String image, String price,String title,
                               String description, String pid) {
        String query = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?\n"
                + "where id = ?";
        try {
            conn = new DaoConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[]args){
        Dao dao = new Dao();
        List<Product> list = dao.getAllProduct();
        for(Product o:list){
            System.out.println(o);
        }
        Accounts ac = dao.login("tnv","3162");
        System.out.println(ac.getUser());
    }
}
