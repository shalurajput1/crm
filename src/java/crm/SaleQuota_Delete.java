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
public class SaleQuota_Delete {
Connection con=null;

    public void quotaDelete(String args[])
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
        s.executeUpdate("delete  from salesmanQuota where id='"+args[i]+"'");
    }
    catch(Exception e)
    {
        System.out.println("Quota delete page have error occured"+e);
    }
    }
         }
}
}
