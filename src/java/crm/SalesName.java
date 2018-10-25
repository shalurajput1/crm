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
public class SalesName
{Connection con=null;

ArrayList ar=new ArrayList();
public ArrayList selectSalesManager()
{
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from sales");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      ar.add(rs1.getString(1));
      ar.add(rs1.getString(6));
   }
    }
    catch(Exception e)
    {
        System.out.println("State hava enot get "+e);
    }
   return ar;
}
}




