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
public class Bill
{
    String bill;
    String cust;
    String model;
    String color;
    String vname;
    String in;
    String indate;
    long amount;
    String sn;
    String terr;

    public String getTerr() {
        return terr;
    }

    public void setTerr(String terr) {
        this.terr = terr;
    }

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public String getBill() {
        return bill;
    }

    public void setBill(String bill) {
        this.bill = bill;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCust() {
        return cust;
    }

    public void setCust(String cust) {
        this.cust = cust;
    }

    public String getIn() {
        return in;
    }

    public void setIn(String in) {
        this.in = in;
    }

    public String getIndate() {
        return indate;
    }

    public void setIndate(String indate) {
        this.indate = indate;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    
Connection con=null;
public void insertBill()
{
    try
    {
  Connect co=new Connect();
  con=co.setCon();
  PreparedStatement ps=con.prepareStatement("insert into bill values(?,?,?,?,?,?,?,?,?,?)");
  ps.setString(1, bill);
   ps.setString(2, in);
  ps.setString(3, cust);
  ps.setString(4, model);
  ps.setString(5, vname);
  ps.setString(6, color);
 
  ps.setString(7, indate);
  ps.setString(9, sn);System.out.println(sn);
  ps.setLong(8,amount);
  ps.setString(10,terr);
  ps.executeUpdate();
 }
    catch(Exception e)
    {
        System.out.println("Bill page have error occured"+e);
    }
}
public ArrayList selectModel()
{
    ArrayList ar=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from transfer");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {   ar.add(rs1.getString(1));
      ar.add(rs1.getString(4));
      ar.add(rs1.getString(5));
      ar.add(rs1.getString(6));

   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar;
}

}
