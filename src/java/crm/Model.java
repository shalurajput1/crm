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
public class Model {
Connection con=null;


public ArrayList select()
{
    ArrayList ar=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from porduct_id");
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
public ArrayList select1()
{ArrayList ar1=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from varient");
   ResultSet rs11=ps1.executeQuery();
   while(rs11.next())
   {
      ar1.add(rs11.getString(1));
      ar1.add(rs11.getString(3));
   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar1;
}
public ArrayList select2()
{ArrayList ar2=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from colors");
   ResultSet rs11=ps1.executeQuery();
   while(rs11.next())
   {
      ar2.add(rs11.getString(1));
      ar2.add(rs11.getString(2));
   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar2;
}
public ArrayList select3()
{ArrayList ar3=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from city");
   ResultSet rs11=ps1.executeQuery();
   while(rs11.next())
   {
      ar3.add(rs11.getString(1));
      ar3.add(rs11.getString(3));
   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar3;
}
public ArrayList selectCustomer()
{ArrayList ar4=new ArrayList();
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from customer");
   ResultSet rs11=ps1.executeQuery();
   while(rs11.next())
   {
      ar4.add(rs11.getString(1));
      ar4.add(rs11.getString(2));
   }
    }
    catch(Exception e)
    {
        System.out.println("Model page hava error "+e);
    }
   return ar4;
}

}
