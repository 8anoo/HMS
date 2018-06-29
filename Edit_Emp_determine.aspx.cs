using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class Edit_Emp_determine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["page"] = "Edit_Employee_Profile";
                SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
                SqlCommand mycom = new SqlCommand("select name,user_id from users", mycon);
                SqlDataReader mydr;
                mycon.Open();
                mydr = mycom.ExecuteReader();
                while (mydr.Read())
                {
                    ListItem li = new ListItem(mydr["name"].ToString(), mydr["user_id"].ToString());
                    ddl_select_ssn.Items.Add(li);
                }

                mycon.Close();


            }
        }

        protected void btn_choose_Click(object sender, EventArgs e)
        {
            HttpCookie x = new HttpCookie("Scookie");
            x.Values.Add("user_id", ddl_select_ssn.SelectedValue);
            x.Expires = DateTime.Now.AddDays(5);
            Response.Cookies.Add(x);
            Response.Redirect("Edit_Employee_Profile.aspx");
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}