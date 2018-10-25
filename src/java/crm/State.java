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
public class State
{
String state;

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
Connection con=null;

ArrayList ar=new ArrayList();
public ArrayList select()
{
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from state");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      ar.add(rs1.getString(1));
      ar.add(rs1.getString(2));
   }
    }
    catch(Exception e)
    {
        System.out.println("State hava enot get "+e);
    }
   return ar;
}
String sat=null;
public String sessionState(String na)
{
    try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from sales where userid='"+ na+"'");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      sat=rs1.getString(18);
   }
   }
   catch(Exception e)
    {
        System.out.println("State hava state pageenot get "+e);
    }
  return sat;
}
ArrayList ar1=new ArrayList();
public ArrayList selectState(String d)
{
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from state where sid='"+d+"'");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      ar1.add(rs1.getString(1));
      ar1.add(rs1.getString(2));
   }
    }
    catch(Exception e)
    {
        System.out.println("State hava enot get "+e);
    }
   return ar1;
}
}

