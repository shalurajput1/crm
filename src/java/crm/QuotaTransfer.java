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
public class QuotaTransfer {
String terr;
String in;
String indate;
String invo=null;
String r=null;
String r1=null;
String r2=null;
String r3=null;
String r4=null;
String r5=null;
String r6=null;

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
    public void delearQuota()
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
            try
           {
                  if(r6!=terr)
            {
            PreparedStatement ps1=con.prepareStatement("insert into transfer values(?,?,?,?,?,?,?,?,?,?)");
            ps1.setString(1,r);
            ps1.setString(2,r1);
            ps1.setString(3,r2);
            ps1.setString(4,r3);
            ps1.setString(5,r4);
            ps1.setString(6,r5);
            ps1.setString(7,terr);
            ps1.setString(8,indate);
            ps1.setString(9,r6);
            ps1.setString(10,indate);
            ps1.executeUpdate();
           }
           }
           catch(Exception e)
           {
               System.out.println("recieve page have error occured"+e);
           }
            }
        }
        catch(Exception e)
        {
            System.out.println("Delear quota page have error"+e);
        }
            }
    

            public void insertRecieve()
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
            PreparedStatement s1=con.prepareStatement("insert into transfer values(?,?,?,?,?,?,?,?,?,?)");
            s1.setString(1,r);
            s1.setString(2,r1);
            s1.setString(3,r2);
            s1.setString(4,r3);
            s1.setString(5,r4);
            s1.setString(6,r5);
            s1.setString(7,terr);
            s1.setString(8,indate);
            s1.setString(9,r6);
            s1.setString(10,indate);
            s1.executeUpdate();
            }   }
        catch(Exception e)
        {
            System.out.println("Delear salesmann quota page have error"+e);
        }
            }
 
 
public  ArrayList selectTransfer(String k)
    {
         ArrayList A=new ArrayList();
     try
     {
        Connect ob1=new Connect();
         con=ob1.setCon();
        PreparedStatement stm=con.prepareStatement("Select * from transfer where recieve='"+k+"'");
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
            A.add(rs.getString(8));
            A.add(rs.getString(9));
            A.add(rs.getString(10));
           }
     }
        catch(Exception e)
        {
            System.out.println("select qutoa transfer page have error"+e);
        }
         return A;
}
public  ArrayList selectRecieveQuota(String km)
    {
         ArrayList A=new ArrayList();
     try
     {
        Connect ob1=new Connect();
        Connection con12=ob1.setCon();
        PreparedStatement stm=con12.prepareStatement("Select * from transfer where recieve='"+terr+"'");
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
            A.add(rs.getString(8));
            A.add(rs.getString(9));
            A.add(rs.getString(10));
           }
     }
        catch(Exception e)
        {
            System.out.println("select qutoa transfer page have error"+e);
        }
         return A;
}
public  ArrayList selectTransferAdmin()
    {
         ArrayList A=new ArrayList();
     try
     {
        Connect ob1=new Connect();
        Connection con12=ob1.setCon();
        PreparedStatement stm=con12.prepareStatement("Select * from transfer ");
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
            A.add(rs.getString(8));
            A.add(rs.getString(9));
            A.add(rs.getString(10));
           }
     }
        catch(Exception e)
        {
            System.out.println("select qutoa transfer page have error"+e);
        }
         return A;
}
public  ArrayList selectRecieve(String ky)
    {
         ArrayList R=new ArrayList();
     try
     {
        Connect ob1=new Connect();
        Connection con12=ob1.setCon();
        PreparedStatement stm=con12.prepareStatement("Select * from transfer where transfer='"+ky+"'");
        ResultSet rs=stm.executeQuery();
        while(rs.next())
            {
            R.add(rs.getString(1));
            R.add(rs.getString(2));
            R.add(rs.getString(3));
            R.add(rs.getString(4));
            R.add(rs.getString(5));
            R.add(rs.getString(6));
            R.add(rs.getString(7));
            R.add(rs.getString(8));
            R.add(rs.getString(9));
            R.add(rs.getString(10));
           }
     }
        catch(Exception e)
        {
            System.out.println("select qutoa transfer page have error"+e);
        }
         return R;
}
}


           