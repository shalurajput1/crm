/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package crm;
import java.sql.*;
import myconnection.Connect;
import java.util.*;
/**
 *
 * @author Rohit Pachouli
 */
public class Customer {
String userid;
String title;
String name;
String add;
    String state;
    String city;
    int pin=0;
    int phone;
    int phone1;
    long mobile;
    String email;
    String dob;
   int ig;
    String occu;

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIg() {
        return ig;
    }

    public void setIg(int ig) {
        this.ig = ig;
    }

    public long getMobile() {
        return mobile;
    }

    public void setMobile(long mobile) {
        this.mobile = mobile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOccu() {
        return occu;
    }

    public void setOccu(String occu) {
        this.occu = occu;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getPhone1() {
        return phone1;
    }

    public void setPhone1(int phone1) {
        this.phone1 = phone1;
    }

    public int getPin() {
        return pin;
    }

    public void setPin(int pin) {
        this.pin = pin;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
    Connection con=null;
    public void insertCustomer()
    {
        try
        {
            Connect co=new Connect();
            con=co.setCon();
            PreparedStatement ps=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
            ps.setString(1,userid);
            ps.setString(3,title);
            ps.setString(2,name);
            ps.setString(4,add);
            ps.setString(5,city);
            ps.setString(6,state);
            ps.setInt(7,pin);
            ps.setInt(8,phone);
            ps.setInt(9,phone1);
            ps.setLong(10,mobile);
            ps.setString(11,email);
            ps.setString(12,dob);
            ps.setInt(13,ig);
            ps.setString(14,occu);
            ps.executeUpdate();
        }
        catch(Exception e)
        {
            System.out.println("the customer page have error occured"+e);
        }
    }
        ArrayList A=new ArrayList();
public ArrayList select()
{
  try
  {
      Connect co=new Connect();
      con=co.setCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("Select * from customer");
      while(rs.next())
      {
      A.add(rs.getString(1));
      A.add(rs.getString(2));
      A.add(rs.getString(3));
      A.add(rs.getString(4));
      A.add(rs.getString(5));
      A.add(rs.getString(6));
      A.add(rs.getInt(7));
      A.add(rs.getInt(8));
      A.add(rs.getInt(9));
      A.add(rs.getLong(10));
      A.add(rs.getString(11));
      A.add(rs.getString(12));
      A.add(rs.getInt(13));
      A.add(rs.getString(14));
      }
  }
  catch(Exception e)
  {
  System.out.println(e);
  }
  return A;
}
    }

