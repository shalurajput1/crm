/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package crm;
import myconnection.Connect;
import java.sql.*;
/**
 *
 * @author Rohit Pachouli
 */
public class Color
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

}
