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
public class CustomerUpdate {
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
    public void doUp()
    {
        Connect c=new Connect();
        con=c.setCon();

    try
    {
        Statement st=con.createStatement();
        st.executeUpdate("update customer set address='"+add+"',state='"+state+"',city='"+city+"',pin="+pin+",phone="+phone+" ,phone1="+phone1+",mobile="+mobile+",email='"+email+"',income="+ig+",occuption='"+occu+"' where us='"+userid+"' ");
        System.out.println("My nae is khan Rohit "+con);
    }
    catch(Exception e)
    {
        System.out.println(e);
    }

    }


public  ArrayList select1(String name)
    {
         ArrayList A=new ArrayList();
     try
     {
         System.out.println(name);
        Connect ob1=new Connect();
        Connection con12=ob1.setCon();System.out.println(con12);
        PreparedStatement stm=con12.prepareStatement("Select * from customer where us='"+name+"'");
        ResultSet rs=stm.executeQuery();
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
        catch(Exception e3)
        {
            System.out.println("Salex update java page have error occured"+e3);
        }
     return A;
    }
public  ArrayList selectBill(String bill)
    {
         ArrayList bi=new ArrayList();
     try
     {
         System.out.println(name);
        Connect ob1=new Connect();
        Connection con12=ob1.setCon();System.out.println(con12);
        PreparedStatement stm=con12.prepareStatement("Select * from bill where b_id='"+bill+"'");
        ResultSet rs=stm.executeQuery();
        while(rs.next())
            {
           bi.add(rs.getString(1));
      bi.add(rs.getString(2));
      bi.add(rs.getString(3));
      bi.add(rs.getString(4));
      bi.add(rs.getString(5));
      bi.add(rs.getString(6));
      bi.add(rs.getInt(7));
      bi.add(rs.getString(8));
      
        }
        }
        catch(Exception e3)
        {
            System.out.println("Salex update java page have error occured"+e3);
        }
     return bi;
    }

}