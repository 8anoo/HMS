using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(DataManager.constr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlDataReader dr = DataManager.GetDataReader("select_user_pass", out con,
                            DataManager.CreateParameter("@user_name", System.Data.SqlDbType.NVarChar, user_name.Value),
                            DataManager.CreateParameter("@password", System.Data.SqlDbType.NVarChar, password.Value));

            while (dr.Read())
            {
                if (dr.HasRows)
                {
                    /*Session["name"] = dr[2].ToString();
                    Session["type"] = dr[4].ToString();*/
                    Session["user_name"]=dr["user_name"].ToString();                        
                    Session["name"] = dr["name"].ToString();
                    Session["type"] = dr["permation_type"].ToString();

                    Response.Write("<script>alert('" + dr[2].ToString() + "')</script>");

                    /*
                        dr["name"].ToString();
                        dr["permation_type"].ToString()*/

                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName Or Password');</script>");
                }
            }
        }
    }
}