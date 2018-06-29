using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["type"] == null)
                    Response.Redirect("login.aspx");
                else
                {
                    name.InnerText = Session["name"].ToString();

                    if(Session["type"].ToString()=="receptienist")
                    {
                        add_employee.Visible = false;
                        edit_employee_profile.Visible = false;
                        edit_patient_profile.Visible = false;
                        add_bed.Visible = false;
                        add_schedule.Visible = false;
                    }
                }
            }
        }

        protected void logout_click(object sender, EventArgs e)
        {
            Session["name"] = Session["type"] = null;
            Response.Redirect("login.aspx");
        }

        
    }
}