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
public class Bill_Display
{
    Connection con=null;
public  ArrayList select1(String name)
    {
         ArrayList A=new ArrayList();
     try
     {
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
            System.out.println("Bill Dispaly update java page have error occured"+e3);
        }
     return A;
    }
public  ArrayList selectInvoice(String invoice)
    {
         ArrayList ii=new ArrayList();
     try
     {
      
        Connect ob1=new Connect();
        Connection con12=ob1.setCon();System.out.println(con12);
        PreparedStatement stm=con12.prepareStatement("Select * from invoice where Invoice='"+invoice+"'");
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
      ii.add(rs.getInt(9));
       ii.add(rs.getInt(10));

        }
        }
        catch(Exception e3)
        {
            System.out.println("Bill display page java page have error occured"+e3);
        }
     return ii;
    }
public  ArrayList selectBill(String bill)
    {
         ArrayList bi=new ArrayList();
     try
     {

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
      bi.add(rs.getString(7));
      bi.add(rs.getLong(8));
      bi.add(rs.getString(9));
      bi.add(rs.getString(10));
        }
        }
        catch(Exception e3)
        {
            System.out.println("Salex update java page have error occured"+e3);
        }
     return bi;
    }
}
