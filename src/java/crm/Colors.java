/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package crm;
import myconnection.Connect;
import java.sql.*;
import java.util.*;
import java.util.ArrayList;
/**
 *
 * @author Rohit Pachouli
 */
public class Colors
{
    String cid;
    String cname;
    String status;

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    Connection con=null;
    public void colorEntry()
    {
        try
        {

            Connect co=new Connect();
            con=co.setCon();
            PreparedStatement ps=con.prepareStatement("insert into colors values(?,?,?)");
            ps.setString(1,cid);System.out.println(cid);
            ps.setString(2, cname);
            ps.setString(3, status);
            ps.executeUpdate();
        }
        catch(Exception e)
        {
            System.out.println("Color entry chck page error"+e);
        }
    }
ArrayList ar=new ArrayList();

public ArrayList select()
{
    Connect co=new Connect();
    con=co.setCon();
    try
    {
        PreparedStatement ps=con.prepareStatement("Select * from colors");
        ResultSet rs1=ps.executeQuery();
        while(rs1.next())
        {
            ar.add(rs1.getString(1));
            ar.add(rs1.getString(2));
            ar.add(rs1.getString(3));
        }
    }
    catch(Exception e)
    {
    }
    return ar;
}
}
