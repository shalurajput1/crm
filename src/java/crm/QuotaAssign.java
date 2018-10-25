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
public class QuotaAssign {
String terr;
String in;
String indate;
String r=null;
String r1=null;
String r2=null;
String r3=null;
String r4=null;
String r5=null;
String r6=null;
String cit="instock";

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

    public String getTerr() {
        return terr;
    }

    public void setTerr(String terr) {
        this.terr = terr;
    }
 Connection con=null;
public void insertQuotaAssign()
{

   
   Connect co=new Connect();
    con=co.setCon();
    try
    {
        PreparedStatement ps=con.prepareStatement("insert into quotaassign values(?,?,?)");
        ps.setString(1,in);
        ps.setString(2,terr);
        ps.setString(3,indate);
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Quota Assign insert page have error occured"+e);
    }
}
public void doup()
{
       Connect co=new Connect();
    con=co.setCon();
    try
    {
        PreparedStatement ps=con.prepareStatement("update invoice set assign='"+terr+"' where invoice='"+in+"'");
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Quota Assign page have error occured"+e);
    }
}
public void serchAssign()
{
    Connect co=new Connect();
    con=co.setCon();
    try
    {
    PreparedStatement ps101=con.prepareStatement("select * from invoice where invoice='"+in+"'");
    ResultSet po=ps101.executeQuery();
    while(po.next())
    {
        String assign=po.getString(7);
        if(assign !="instock")
        {
         try
    {
    PreparedStatement ps1001=con.prepareStatement("insert into quotastate values(?,?,?)");
    ps1001.setString(1,in);
   ps1001.setString(2, terr);
    ps1001.setString(3,indate);
     ps1001.executeUpdate();
    }
    catch(Exception e)
    {
      System.out.println("Delar quota page have error page occured"+e);
    }
        }
    }
}
    catch(Exception e)
    {
      System.out.println("Delar select quota page have error page occured"+e);
    }
}
public void insertStateQuota()
{
Connect co=new Connect();
        con=co.setCon();
        try
        {
            PreparedStatement ps=con.prepareStatement("Select * from invoice where invoice='"+in+"'");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                 r=rs.getString(1);
                 r1=rs.getString(2);
                 r2=rs.getString(3);
                 r3=rs.getString(4);
                 r4=rs.getString(5);
                 r5=rs.getString(6);
                 r6=rs.getString(7);
                 if(r6!=terr)
                 {PreparedStatement ps1=con.prepareStatement("insert into quotastate values(?,?,?,?,?,?,?,?)");
               ps1.setString(1, r);
               ps1.setString(2, r1);
               ps1.setString(3, r2);
               ps1.setString(4, r3);
               ps1.setString(5, r4);
               ps1.setString(6, r5);
               ps1.setString(7, cit);
               ps1.setString(8, terr);
               ps1.executeUpdate();
             }}
        }
        catch(Exception e)
        {
            System.out.println("the quotaassign .java page have error insertsateQuota"+e);
        }
}
public void insertReceiveQuota()
{
Connect co=new Connect();
        con=co.setCon();
        try
        {
            PreparedStatement ps=con.prepareStatement("Select * from invoice where invoice='"+in+"'");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                 r=rs.getString(1);
                 r1=rs.getString(2);
                 r2=rs.getString(3);
                 r3=rs.getString(4);
                 r4=rs.getString(5);
                 r5=rs.getString(6);
                 r6=rs.getString(7);
            PreparedStatement ps1=con.prepareStatement("insert into quotastate values(?,?,?,?,?,?,?,?)");
               ps1.setString(1, r);
               ps1.setString(2, r1);
               ps1.setString(3, r2);
               ps1.setString(4, r3);
               ps1.setString(5, r4);
               ps1.setString(6, r5);
               ps1.setString(7, cit);
               ps1.setString(8, terr);
               ps1.executeUpdate();
             }
        }
        catch(Exception e)
        {
            System.out.println("the invoice .java page have error insertsateQuota"+e);
        }
}
  
public  ArrayList selectTransfer(String nam)
    {
         ArrayList A=new ArrayList();
     try
     {
        Connect ob1=new Connect();
        Connection con12=ob1.setCon();
        PreparedStatement stm=con12.prepareStatement("Select * from quotastate where state='"+nam+"'");
        ResultSet rs=stm.executeQuery();
        while(rs.next())
            {
            A.add(rs.getString(1));
            A.add(rs.getString(2));
            A.add(rs.getString(3));
            A.add(rs.getString(4));
            A.add(rs.getString(5));
            A.add(rs.getString(6));
            A.add(rs.getString(7));
        }
     }
        catch(Exception e)
        {
            System.out.println("the quotaSales .java page have error insertsateQuota"+e);
        }
         return A;
}
String sru="sale";
public void dodeleteQuotaState()
{
       Connect co=new Connect();
    con=co.setCon();
    try
    {
        PreparedStatement ps=con.prepareStatement("delete from quotastate where staus='"+terr+"' and invoice='"+in+"'");
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Quota Assign page have error occured"+e);
    }
}
public void doUpdateQuotaState()
{
       Connect co=new Connect();
    con=co.setCon();
    try
    {
        PreparedStatement ps=con.prepareStatement("Update  quotastate set staus='"+terr+"' where invoice='"+in+"'");
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Quota Assign page have error occured"+e);
    }
}
public void doupdateSale(String k,String voic)
{
       Connect co=new Connect();
    con=co.setCon();
    try
    {
        PreparedStatement ps=con.prepareStatement("update QuotaState set staus='"+sru+"' where invoice='"+voic+"'");
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("Quota Assign page have error occured"+e);
    }
}
}
