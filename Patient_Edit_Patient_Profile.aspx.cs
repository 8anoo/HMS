using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class Patient_Edit_Patient_Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(DataManager.constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["patient_ssn"] != null)
                {
                    Session["page"] = "patient_edit_patient_profile";
                    txt_patient_name.InnerText = Session["name"].ToString();
                    txt_patient_ssn.Value = Session["patient_ssn"].ToString();
                    txt_patient_phone.InnerText = Session["mobile"].ToString();

                    ////////////////////////////////////////////////////
                    txt_name.Value=Session["name"].ToString();

                    DropDownList3.SelectedValue = Session["marital_state"].ToString();
                    DropDownList2.SelectedValue = Session["gender_id"].ToString();
                    txt_p_street.Value = Session["p_street"].ToString();
                    txt_p_segel.Value = Session["p_segel"].ToString();
                    txt_p_madany.Value = Session["p_madany"].ToString();
 
                    // ;
                    // ;
                    // ;

                    txt_phone.Value=Session["mobile"].ToString();
                    DropDownList5.SelectedValue = Session["governorate"].ToString();
                    DropDownList4.SelectedValue = Session["nationality_id"].ToString();
                    txt_job.Value=Session["job"].ToString();

                    //Session[""] ;
                    // ;

                    DropDownList1.SelectedValue = Session["religion_id"].ToString();
                    txt_address.Value=Session["job_address"].ToString();

                    //txt_date_kashf.Value = DateTime.Parse(drrr["date_kashf"].ToString()).ToShortDateString();
                    date.Value = DateTime.Parse(Session["p_birth_date"].ToString()).ToShortDateString();     /*.Substring(0, 10);*/

                    ////////////////////////////////////////////////////
                }
                else
                {
                    Response.Redirect("Edit_Patient_Profile.aspx");
                }
                    
            }
            
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            DataManager.ExecuteNonQuery("update_patient",
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

                Session["patient_ssn"] = null;
                Session["name"] = null;
                Session["mobile"] = null;

                Session["marital_state"] = null;
                Session["gender_id"] = null;
                Session["p_street"] = null;
                Session["p_segel"] = null;
                Session["p_madany"] = null;

                Session["mobile"] = null;
                Session["governorate"] = null;
                Session["nationality_id"] = null;
                Session["job"] = null;

                Session["religion_id"] = null;
                Session["job_address"] = null;
                Session["p_birth_date"] = null;
                
            Response.Write("<script>alert('Data Updated...')</script>");
            Response.Redirect("Patient_Edit_Patient_Profile.aspx");  
        }
    }
}