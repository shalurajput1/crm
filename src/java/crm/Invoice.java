/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package crm;
import java.sql.*;
import myconnection.Connect ;
import java.util.*;
/**
 *
 * @author Rohit Pachouli
 */
public class Invoice
{
String in;
String ch;
String eng;
String model;
String vname;
String color;
String city="instock";
String indate;
long amount;
int margin;

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }


    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public String getCh() {
        return ch;
    }

    public void setCh(String ch) {
        this.ch = ch;
    }

    

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getEng() {
        return eng;
    }

    public void setEng(String eng) {
        this.eng = eng;
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

   
    public String getSmodel() {
        return vname;
    }

    public void setSmodel(String vname) {
        this.vname = vname;
    }

    public int getMargin() {
        return margin;
    }

    public void setMargin(int margin) {
        this.margin = margin;
    }

   
Connection con=null;
public void insertInvoice()
{

    Connect co=new Connect();
    con=co.setCon();
    try
    {
    PreparedStatement ps=con.prepareStatement("insert into invoice values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,in);
    ps.setString(2,ch);
    ps.setString(3,eng);
    ps.setString(4,model);
    ps.setString(5,vname);
    ps.setString(6,color);
    ps.setString(7,city);
    ps.setString(8,indate);
    ps.setLong(9,amount);
    ps.setInt(10,margin);
    
    ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Invoice page have error occured"+e);
    }
}
public  ArrayList selectInvoice()
    {
         ArrayList ii=new ArrayList();
         Connect co=new Connect();
    con=co.setCon();
     try
     {
       PreparedStatement stm=con.prepareStatement("Select * from invoice");
        ResultSet rs=stm.executeQuery();
        while(rs.next())
            {
      ii.add(rs.getString(1));
      ii.add(rs.getString(2));
      ii.add(rs.getString(3));
      ii.add(rs.getString(4));
      ii.add(rs.getString(5));
      ii.add(rs.getString(6));
      ii.add(rs.getString(7));
      ii.add(rs.getString(8));
      ii.add(rs.getLong(9));
      ii.add(rs.getInt(10));
      

        }
        }
        catch(Exception e3)
        {
            System.out.println("INvoice.java update java page have error occured"+e3);
        }
     return ii;
    }
public void doUp()
    {
    try
    {Connect co=new Connect();
    con=co.setCon();
        Statement stq=con.createStatement();
        stq.executeUpdate("update invoice set mid='"+model+"',vid='"+vname+"',cid='"+color+"',amount="+amount+" ,margin="+margin+" where invoice='"+in+"' ");
        System.out.println("My nae is khan Rohit "+con);
    }
    catch(Exception e)
    {
        System.out.println("invoice page updat part haver error "+e);
    }

    }
public void insertMargin()
{
    Connect co=new Connect();
    con=co.setCon();
    try
    {
    PreparedStatement ps11=con.prepareStatement("insert into delear values(?,?,?,?,?)");
    ps11.setString(1,model);
    ps11.setString(2,vname);
    ps11.setString(3,color);
    ps11.setLong(4, amount);
    ps11.setInt(5, margin);
    ps11.executeUpdate();
    }
    catch(Exception e)
    {
      System.out.println("Delar invoice page have error page occured"+e);
    }
    }

}
