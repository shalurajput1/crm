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

public class model_req
{
String terr;
String mname;
String vname;
String cname;
int quota;

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
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

    public void insertModelRe()
    {
    Connect co=new Connect();
    con=co.setCon();
    try
    {
        PreparedStatement ps=con.prepareStatement("insert into model_req values(?,?,?,?,?)");
        ps.setString(1, terr);
        ps.setString(2, mname);
        ps.setString(3, vname);
        ps.setString(4, cname);
        ps.setInt(5, quota);
        ps.executeUpdate();

    }
    catch(Exception e)
    {
        System.out.println("model requirment poage have erro occurren"+e);
    }
    }

public  ArrayList selectInquiry()
    {
         ArrayList bi=new ArrayList();
     try
     {

        Connect ob1=new Connect();
         con=ob1.setCon();System.out.println(con);
        PreparedStatement stm=con.prepareStatement("Select * from model_req");
        ResultSet rs=stm.executeQuery();
        while(rs.next())
            {
           bi.add(rs.getString(1));
      bi.add(rs.getString(2));
      bi.add(rs.getString(3));
      bi.add(rs.getString(4));
      bi.add(rs.getInt(5));
      }
        }
        catch(Exception e3)
        {
            System.out.println("Salex update java page have error occured"+e3);
        }
     return bi;
    }

}
