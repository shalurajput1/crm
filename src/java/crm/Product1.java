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
public class Product1
{
    String modelid;
    String name;
    

    public String getModelid() {
        return modelid;
    }

    public void setModelid(String modelid) {
        this.modelid = modelid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   
public Connection con=null;
public void insertProduct()
{
    try
    {
        Connect co=new Connect();
        con=co.setCon();
        PreparedStatement ps=con.prepareStatement("insert into  porduct_id values(?,?)");
        ps.setString(1,modelid);
        ps.setString(2,name);
        
        ps.executeUpdate();
    }
    catch(Exception e)
    {
        System.out.println("The  product page have error occured"+e);
    }
}
}
