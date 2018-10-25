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
public class Analysis
{
String fdate;
String sdate;
String state;

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getFdate() {
        return fdate;
    }

    public void setFdate(String fdate) {
        this.fdate = fdate;
    }

    public String getSdate() {
        return sdate;
    }

    public void setSdate(String sdate) {
        this.sdate = sdate;
    }
Connection con=null;
public ArrayList selectAnalysis()
{
    ArrayList A=new ArrayList();
    Connect co=new Connect();
          con=co.setCon();
          try
          {
         PreparedStatement ps=con.prepareStatement("SELECT * FROM crm.bill where ind between '"+fdate+"' and '"+sdate+"' ");
          ResultSet rs=ps.executeQuery();
          while(rs.next())
            {
            A.add(rs.getString(1));
          A.add(rs.getString(2));
        A.add(rs.getString(3));
        A.add(rs.getString(4));
        A.add(rs.getString(5));
        A.add(rs.getString(6));
       A.add(rs.getString(7));
      A.add(rs.getInt(8));
       A.add(rs.getString(6));
      A.add(rs.getString(10));
          }}
           catch(Exception e)
    {
        System.out.println("aanlysis page have error occured"+e);
    }
          return A;
}
public ArrayList selectstateAnalysis()
{
    ArrayList A=new ArrayList();
    Connect co=new Connect();
          con=co.setCon();
          try
          {System.out.println(state);
         PreparedStatement ps=con.prepareStatement("SELECT * FROM crm.bill where terr='"+state+"' and ind between '"+fdate+"' and '"+sdate+"' ");
          ResultSet rs=ps.executeQuery();
          while(rs.next())
            {
            A.add(rs.getString(1));
          A.add(rs.getString(2));
        A.add(rs.getString(3));
        A.add(rs.getString(4));
        A.add(rs.getString(5));
        A.add(rs.getString(6));
       A.add(rs.getString(7));
      A.add(rs.getInt(8));
       A.add(rs.getString(6));
      A.add(rs.getString(10));
          }}
           catch(Exception e)
    {
        System.out.println("aanlysis  state page have error occured"+e);
    }
          return A;
}
public ArrayList selectShowRoomAnalysis(String k)
{
    ArrayList A=new ArrayList();
    Connect co=new Connect();
          con=co.setCon();
          try
          {
           System.out.println(state);
         PreparedStatement ps=con.prepareStatement("SELECT * FROM crm.bill where terr='"+k+"' and ind between '"+fdate+"' and '"+sdate+"' ");
          ResultSet rs=ps.executeQuery();
          while(rs.next())
            {
            A.add(rs.getString(1));
          A.add(rs.getString(2));
        A.add(rs.getString(3));
        A.add(rs.getString(4));
        A.add(rs.getString(5));
        A.add(rs.getString(6));
       A.add(rs.getString(7));
      A.add(rs.getInt(8));
       A.add(rs.getString(6));
      A.add(rs.getString(10));
          }}
           catch(Exception e)
    {
        System.out.println("aanlysis  state page have error occured"+e);
    }
          return A;
}
public ArrayList selectSalesmangerAnalysis()
{
    ArrayList A=new ArrayList();
    Connect co=new Connect();
          con=co.setCon();
          try
          {
         PreparedStatement ps=con.prepareStatement("SELECT * FROM crm.bill where userid='"+state+"' and ind between '"+fdate+"' and '"+sdate+"' ");
          ResultSet rs=ps.executeQuery();
          while(rs.next())
            {
            A.add(rs.getString(1));
          A.add(rs.getString(2));
        A.add(rs.getString(3));
        A.add(rs.getString(4));
        A.add(rs.getString(5));
        A.add(rs.getString(6));
       A.add(rs.getString(7));
      A.add(rs.getInt(8));
       A.add(rs.getString(6));
      A.add(rs.getString(10));
          }}
           catch(Exception e)
    {
        System.out.println("aanlysis page have error occured"+e);
    }
          return A;
}
}
