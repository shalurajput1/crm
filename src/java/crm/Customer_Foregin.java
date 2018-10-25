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
public class Customer_Foregin {
Connection con=null;


public ArrayList selectCustomer()
{
    ArrayList ar=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from customer");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      ar.add(rs1.getString(1));
      ar.add(rs1.getString(2));
   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar;
}
public ArrayList selectInvoice()
{
    ArrayList ar1=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from invoice");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      ar1.add(rs1.getString(1));
     
   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar1;
}
public ArrayList selectSalesman()
{
    ArrayList ar2=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from saleman");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
        ar2.add(rs1.getString(2));
      ar2.add(rs1.getString(5));

   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar2;
}
}
