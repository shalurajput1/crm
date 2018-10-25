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
public class Salesman_Update {
String userid;
 String cat;

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }
    String pass;
    String pass1;
    String fname;
    String lname;
    String add;
    String state;
    String city;
    int pin=0;
    int phone;
    int phone1;
    long mobile;
    String email;
    String dob;

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

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
    String doj;
    String terr;

    Connection con=null;
    public void doUp()
    {
        Connect c=new Connect();
        con=c.setCon();

    try
    {
        Statement st=con.createStatement();
        st.executeUpdate("update saleman set cat='"+cat+"',addr='"+add+"',state='"+state+"',city='"+city+"',pin="+pin+",phone="+phone+" ,phone1="+phone1+",mobile="+mobile+",email='"+email+"' where id='"+userid+"' ");
        
    }
    catch(Exception e)
    {
        System.out.println(e);
    }

}
    ArrayList A=new ArrayList();
public ArrayList select(String name)
{
  try
  {
      Connect co=new Connect();
      con=co.setCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("Select * from saleman where id='"+name+"'");
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


