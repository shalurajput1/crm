/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package myconnection;
import java.sql.*;
/**
 *
 * @author Rohit Pachouli
 */
public class Connect
{
  Connection con=null;
  public Connection setCon()
  {
      try
      {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm","root","root");
      }
      catch(Exception e)
      {
          System.out.println("My connection page has error occuerd"+e);
      }
      return con;
  }
}
