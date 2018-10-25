/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package crm;
import java.sql.*;
import myconnection.Connect;
/**
 *
 * @author Rohit Pachouli
 */
public class SubModel
{
String vid;
String mname;
String vname;


    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    
    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }
Connection con=null;
public void insertSub()
{
    try
    {
        Connect c=new Connect();
        con=c.setCon();
        PreparedStatement ps=con.prepareStatement("insert into varient values(?,?,?)");
        ps.setString(1,vid);
        ps.setString(2, mname);
        ps.setString(3,vname);
        
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("The varient page have error occured"+e);
    }
}

}
