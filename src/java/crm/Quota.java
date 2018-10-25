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
public class Quota {
    String terr;
    String mname;
    String vname;
    String color;
    int quota;

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public int getQuota() {
        return quota;
    }

    public void setQuota(int quota) {
        this.quota = quota;
    }

    public String getTerr() {
        return terr;
    }

    public void setTerr(String terr) {
        this.terr = terr;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

Connection con=null;
public void insertQuota()
{
     try
        {
            Connect co=new Connect();
            con=co.setCon();
            PreparedStatement ps=con.prepareStatement("insert into quota values(?,?,?,?,?)");
            ps.setString(1,terr);
            ps.setString(2,mname);
            ps.setString(3,vname);
            ps.setString(4,color);
            ps.setInt(5,quota);
            ps.executeUpdate();
     }
     catch(Exception e )
     {
         System.out.println("Quota page have error occured" +e);
     }
     }
ArrayList A=new ArrayList();
public ArrayList selectQuota()
{
  try
  {
      Connect co=new Connect();
      con=co.setCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("Select * from quota");
      while(rs.next())
      {
      A.add(rs.getString(1));
      A.add(rs.getString(2));
      A.add(rs.getString(3));
      A.add(rs.getString(4));
      A.add(rs.getInt(5));

      }
  }
  catch(Exception e)
  {
  System.out.println(e);
  }
  return A;
}
public void doUp()
    {
        Connect c=new Connect();
        con=c.setCon();

    try
    {
        PreparedStatement ps=con.prepareStatement("update quota set q=? where sid=?");
          ps.setInt(1,quota);
          ps.setString(2,terr);
          int s=ps.executeUpdate();
        System.out.println("My nae is khan Rohit "+con);
        System.out.println("fcsafcsad"+s);
    }
    catch(Exception e)
    {
        System.out.println(e);
    }

    }
public  ArrayList selectQuotaDisplay(String id)
    {
         ArrayList bi=new ArrayList();
         Connect c=new Connect();
        con=c.setCon();
     try
     {
PreparedStatement stm=con.prepareStatement("Select * from quota where sid='"+id+"'");
        ResultSet rsz=stm.executeQuery();
        while(rsz.next())
            {
           bi.add(rsz.getString(1));
      bi.add(rsz.getString(2));
      bi.add(rsz.getString(3));
      bi.add(rsz.getString(4));
      bi.add(rsz.getInt(5));
        }
        }
        catch(Exception e3)
        {
            System.out.println("Quota update java page have error occured"+e3);
        }
     return bi;
    }
}
