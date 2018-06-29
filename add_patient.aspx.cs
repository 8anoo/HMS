using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class add_patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Calendar1.SelectedDate=DateTime.Parse("1996-1-1");
            if(!IsPostBack)
            {
                Session["page"] = "Add_patient";
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
        
        //String constr="Connection String";
        //SqlConnection con=new SqlConnection(constr);
        //SqlCommand cmd=new SqlCommand("insert into patient (patient_ssn , name) values ('"+txt_patient_ssn.Value+"','"+txt_name.Value+"')");
        
        ////if Command is Stored Write This
        //cmd.CommandType = System.Data.CommandType.StoredProcedure;
        
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
        



        
            DataManager.ExecuteNonQuery("add_patient",
                DataManager.CreateParameter("@patient_ssn", System.Data.SqlDbType.BigInt, txt_patient_ssn.Value),
                DataManager.CreateParameter("@name", System.Data.SqlDbType.NVarChar, txt_name.Value),
                DataManager.CreateParameter("@gender_id", System.Data.SqlDbType.Int, DropDownList2.SelectedItem.Value),
                DataManager.CreateParameter("@marital_state", System.Data.SqlDbType.Int, DropDownList3.SelectedItem.Value),
                DataManager.CreateParameter("@mobile", System.Data.SqlDbType.NVarChar, txt_phone.Value),
                DataManager.CreateParameter("@governorate", System.Data.SqlDbType.Int, DropDownList5.SelectedItem.Value),
                DataManager.CreateParameter("@nationality_id", System.Data.SqlDbType.Int, DropDownList4.SelectedItem.Value),
                DataManager.CreateParameter("@job", System.Data.SqlDbType.NVarChar, txt_job.Value),
                DataManager.CreateParameter("@religion_id", System.Data.SqlDbType.Int, DropDownList1.SelectedItem.Value),
                DataManager.CreateParameter("@job_address", System.Data.SqlDbType.NVarChar, txt_address.Value),
                DataManager.CreateParameter("@p_birth_date", System.Data.SqlDbType.Date, DateTime.Parse(date.Value)),
                DataManager.CreateParameter("@p_street", System.Data.SqlDbType.NVarChar, txt_p_street.Value),
                DataManager.CreateParameter("@p_segel", System.Data.SqlDbType.NVarChar, txt_p_segel.Value),
                DataManager.CreateParameter("@p_madany", System.Data.SqlDbType.NVarChar, txt_p_madany.Value));

            Response.Write("<script>alert('product saved...')</script>");
            Response.Redirect("home.aspx");
        }



    }
}