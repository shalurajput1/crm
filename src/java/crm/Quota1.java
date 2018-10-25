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
public class Quota1 {
String sid;
    String mname;

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

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
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
    String vname;
    String terr;
    int quota;
Connection con=null;
public void insertQuota()
{
     try
        {
            Connect co=new Connect();
            con=co.setCon();
            PreparedStatement ps=con.prepareStatement("insert into salesmanquota values(?,?,?,?,?)");
            ps.setString(1,sid);
            ps.setString(2,mname);
            ps.setString(3,vname);
            ps.setString(4,terr);
            ps.setInt(5,quota);
            ps.executeUpdate();
     }
     catch(Exception e )
     {
         System.out.println("Quota page have error occured" +e);
     }
     }
ArrayList A=new ArrayList();
public ArrayList selectSalesmanQuota()
{
  try
  {
      Connect co=new Connect();
      con=co.setCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("Select * from salesmanquota");
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
ArrayList ar=new ArrayList();
public ArrayList selectname()
{
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from saleman");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      ar.add(rs1.getString(1));
      ar.add(rs1.getString(5));
   }
    }
    catch(Exception e)
    {
        System.out.println("State hava enot get "+e);
    }
   return ar;
}
ArrayList ac=new ArrayList();
public ArrayList selectCity()
{
   try
    {
Connect co=new Connect();
con=co.setCon();
PreparedStatement ps1=con.prepareStatement("Select * from city");
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
      ac.add(rs1.getString(1));
      ac.add(rs1.getString(3));
   }
    }
    catch(Exception e)
    {
        System.out.println("State hava enot get "+e);
    }
   return ac;
}
public void doUp()
    {
        Connect c=new Connect();
        con=c.setCon();

    try
    {
        Statement st=con.createStatement();
        st.executeUpdate("update salesmanquota set quota="+quota+" where id='"+sid+"' ");
        
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
PreparedStatement stm=con.prepareStatement("Select * from salesmanquota where id='"+id+"'");
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
