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
public class Login
{
String cat;
String userid;
String pass;

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
Connection con=null;
public String getLogin(String type,String name,String passw)
{String t=null;
    try
    {
        Connect co=new Connect();
        con=co.setCon();
        System.out.println();
        PreparedStatement ps=con.prepareStatement("Select CATEGORY from login where LOGIN_ID=? and pass=? and CATEGORY=?");
        ps.setString(1,name);
        ps.setString(2,passw);
        ps.setString(3,type);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            t=rs.getString("CATEGORY");
            System.out.println(t);
        }
    }
    catch(Exception e)
    {
        System.out.println("Login page have error occured"+e);
    }
    return t;
}
}
