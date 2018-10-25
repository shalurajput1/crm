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
public class salex
{
    String userid;
    String pass;
    String pass1;
    String title;
    String fname;
    String lname;
    String add;
    String state;
    String city;
    int pin=0;
    int phone;
    int phone1;
    long mobile=0;
    String email;
    String dob;
    String doj;
    String terr;
    String cat;

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

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

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public long getMobile() {
        return mobile;
    }

    public void setMobile(long mobile) {
        this.mobile = mobile;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPass1() {
        return pass1;
    }

    public void setPass1(String pass1) {
        this.pass1 = pass1;
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

    public String getTerr() {
        return terr;
    }

    public void setTerr(String terr) {
        this.terr = terr;
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
public void insertSale()
{
    
    try
    {
        Connect co=new Connect();
        con=co.setCon();
        PreparedStatement ps=con.prepareStatement("insert into sales values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,userid);
        ps.setString(3, pass);
        ps.setString(4, pass1);
        ps.setString(5, title);
        ps.setString(6, fname);
        ps.setString(7, lname);
        ps.setString(8, add);
        ps.setString(9, state);
        ps.setString(10, city);
        ps.setInt(11, pin);
        ps.setInt(12, phone);
        ps.setInt(13, phone1);
        ps.setLong(14, mobile);
        ps.setString(15,email );
        ps.setString(16, dob);
        ps.setString(17, doj);
        ps.setString(18, terr);
        ps.setString (2,cat);
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("salesmanx page havae error occured"+e);
    }
}
public void insertUser()
{
    try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps=con.prepareStatement("insert into login values(?,?,?) ");
ps.setString(1,userid);
ps.setString(2,pass);
ps.setString(3,cat);
ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Select pagee error occured"+e);
    }
}
public void insertterr()
{
    try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps=con.prepareStatement("insert into territory values(?,?) ");
ps.setString(1,userid);
ps.setString(2,terr);

ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Select pagee error occured"+e);
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
      ResultSet rs=st.executeQuery("Select * from sales");
      while(rs.next())
      {
      A.add(rs.getString(1));
      A.add(rs.getString(2));
      A.add(rs.getString(3));
      A.add(rs.getString(4));
      A.add(rs.getString(5));
      A.add(rs.getString(6));
      A.add(rs.getString(7));
      A.add(rs.getString(8));
      A.add(rs.getString(9));
      A.add(rs.getString(10));
      A.add(rs.getInt(11));
      A.add(rs.getInt(12));
      A.add(rs.getInt(13));
      A.add(rs.getLong(14));
      A.add(rs.getString(15));
      A.add(rs.getString(16));
      A.add(rs.getString(17));
      A.add(rs.getString(18));
      }
  }
  catch(Exception e)
  {
  System.out.println(e);
  }
  return A;
}
}
