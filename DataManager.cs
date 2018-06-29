using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public class DataManager
{

    #region Parameters Methods
    public static SqlParameter CreateParameter(string prm_name, SqlDbType type, object prm_value)
    {
        SqlParameter prm = new SqlParameter(prm_name, type);
        prm.Value = prm_value;
        return prm;
    }



    public static SqlParameter CreateParameter(string prm_name, SqlDbType type, ParameterDirection dir)
    {
        SqlParameter prm = new SqlParameter(prm_name, type);
        prm.Direction = dir;
        return prm;
    } 
    #endregion


    #region Fields
   public static string constr = ConfigurationManager.ConnectionStrings["cnn1"].ConnectionString;
    #endregion


    #region Disconnected Methods
    public static DataSet GetDataSet(string stored_name, string table_name, params SqlParameter[] prmarr)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(stored_name, con);
        foreach (SqlParameter prm in prmarr)
        {
            cmd.Parameters.Add(prm);
        }
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, table_name);

        return ds;
    }
    #endregion


    #region Connected Methods
    public static SqlDataReader GetDataReader(string stored_name,out SqlConnection conout, params SqlParameter[] prmarr)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(stored_name, con);
        foreach (SqlParameter prm in prmarr)
        {
            cmd.Parameters.Add(prm);
        }
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        conout = con;
        return dr;
        
    }


    public static int ExecuteNonQuery(string stored_name, params SqlParameter[] prmarr)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(stored_name, con);
        foreach (SqlParameter prm in prmarr)
        {
            cmd.Parameters.Add(prm);
        }
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        con.Open();
        int x = cmd.ExecuteNonQuery();
        con.Close();
        return x;
    }



    public static object ExecuteScalar(string stored_name, params SqlParameter[] prmarr)
    {
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(stored_name, con);
        foreach (SqlParameter prm in prmarr)
        {
            cmd.Parameters.Add(prm);
        }
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        con.Open();
        object o = cmd.ExecuteScalar();
        con.Close();
        return o;
    }




    public static Hashtable ExecuteNonQueryOutPut(string stored_name, params SqlParameter[] prmarr)
    {
        Hashtable ht = new Hashtable();
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(stored_name, con);
        foreach (SqlParameter prm in prmarr)
        {
            cmd.Parameters.Add(prm);
        }
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        con.Open();
        int x = cmd.ExecuteNonQuery();

        foreach (SqlParameter prm in prmarr)
        {
            if (prm.Direction== ParameterDirection.Output)
            {
                ht.Add(prm.ParameterName, prm.Value);
            }
        }

        con.Close();
        return ht;
    }


    #endregion

}

