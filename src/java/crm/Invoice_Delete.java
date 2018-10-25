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
public class Invoice_Delete {
Connection con=null;

    public void delete(String args[])
    {
        Connect c=new Connect();
         con=c.setCon();

         if(args!=null)
         {
             for(int i=0;i<args.length;i++)
             {
                 try
    {
        Statement s=con.createStatement();
        s.executeUpdate("delete  from invoice where invoice='"+args[i]+"'");
    }
    catch(Exception e)
    {
        System.out.println("invoice delete page have error occured"+e);
    }
    }
         }
}
}
