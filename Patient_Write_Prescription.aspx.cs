using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class Patient_Write_Prescription : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(DataManager.constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["type"] == null)
                    Response.Redirect("login.aspx");
                else
                {
                    if (Session["type"].ToString() == "nurse")
                    {
                        btnsubmit.Visible=false;
                        
                        txt_hos_num.Disabled=true;
                        txt_date_kashf.Disabled=true;
                        txt_doc_moaleg.Disabled=true;
                        txt_elag.Disabled=true;
                    }
                }
                if (Session["patient_ssn"] != null)
                {
                    txt_hos_num.Value = "";
                    txt_date_kashf.Value = DateTime.Now.ToShortDateString();
                    txt_doc_moaleg.Value = "";
                    txt_elag.Value = "";

                    if (DropDownList3.SelectedItem.Value == 0.ToString())
                    {
                        btnsubmit.Enabled = false;
                        btnsubmit.Text = "قم بإضافة تيكت أولا";
                    }
                    else
                    {
                        btnsubmit.Enabled = true;
                        btnsubmit.Text = "إضافة روشته";
                    }
                    
                    Session["page"] = "patient_write_prescription";
                    txt_patient_name.InnerText = Session["name"].ToString();
                    txt_patient_ssn.Value = Session["patient_ssn"].ToString();
                    txt_patient_phone.InnerText = Session["mobile"].ToString();

                    ////////////////////////////////////////////////////
                    txt_name.Value = Session["name"].ToString();


                    SqlDataReader drrr = DataManager.GetDataReader("select_ticket_number_by_ssn", out con,
                    DataManager.CreateParameter("@patient_ssn",System.Data.SqlDbType.BigInt,txt_patient_ssn.Value));

                    if (drrr.HasRows)
                    {
                        while (drrr.Read())
                        {
                            DropDownList3.Items.Add(new ListItem(drrr[0].ToString(),drrr[0].ToString()));
                        }
                    }
                    //DropDownList3.SelectedValue = Session["marital_state"].ToString();
                    //DropDownList2.SelectedValue = Session["gender_id"].ToString();
                    //txt_p_street.Value = Session["p_street"].ToString();
                    //txt_p_segel.Value = Session["p_segel"].ToString();
                    //txt_p_madany.Value = Session["p_madany"].ToString();

                    //// ;
                    //// ;
                    //// ;

                    //txt_phone.Value = Session["mobile"].ToString();
                    //DropDownList5.SelectedValue = Session["governorate"].ToString();
                    //DropDownList4.SelectedValue = Session["nationality_id"].ToString();
                    //txt_job.Value = Session["job"].ToString();

                    ////Session[""] ;
                    //// ;

                    //DropDownList1.SelectedValue = Session["religion_id"].ToString();
                    //txt_address.Value = Session["job_address"].ToString();

                    //date.Value = Session["p_birth_date"].ToString().Substring(0, 10);

                    ////////////////////////////////////////////////////
                }
                else
                {
                    Response.Redirect("Edit_Patient_Profile.aspx");
                }

            }
        }

        protected void btnsub(object sender, EventArgs e)
        {
            Response.Redirect("Patient_Edit_Patient_Profile.aspx");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            
            DataManager.ExecuteNonQuery("update_prescription",
                DataManager.CreateParameter("@ticket_id", System.Data.SqlDbType.Int, DropDownList3.SelectedItem.Value),
                DataManager.CreateParameter("@patient_ssn", System.Data.SqlDbType.BigInt, txt_patient_ssn.Value),
                DataManager.CreateParameter("@hos_num", System.Data.SqlDbType.Int, txt_hos_num.Value),
                DataManager.CreateParameter("@date_kashf", System.Data.SqlDbType.Date, txt_date_kashf.Value),
                DataManager.CreateParameter("@doc_moaleg", System.Data.SqlDbType.NVarChar, txt_doc_moaleg.Value),
                DataManager.CreateParameter("@elag", System.Data.SqlDbType.NVarChar, txt_elag.Value));

            MultiView1.ActiveViewIndex = 1;
            Lb_done.Text = " تم حفظ البيانات بنجاح ";
        }
        protected void btnsubmit2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedItem.Value == 0.ToString())
            {
                btnsubmit.Enabled = false;
                btnsubmit.Text="قم بإضافة تيكت أولا";
                //Session["status"]="0";
            }
            else
            {
                btnsubmit.Enabled = true;
                btnsubmit.Text = "إضافة روشته";
                //Session["status"] = "1";
            }


            txt_hos_num.Value = "";
            txt_date_kashf.Value = DateTime.Now.ToShortDateString();
            txt_doc_moaleg.Value = "";
            txt_elag.Value = "";

            if (DropDownList3.SelectedItem.Value != 0.ToString())
            {
                SqlDataReader drrr = DataManager.GetDataReader("select_by_ticket_id", out con,
                        DataManager.CreateParameter("@ticket_id", System.Data.SqlDbType.Int, DropDownList3.SelectedItem.Value));

                if (drrr.HasRows)
                {
                    while (drrr.Read())
                    {
                        if(drrr[16].ToString().Length > 4)
                        {
                            txt_hos_num.Value = drrr["hos_num"].ToString();
                            txt_date_kashf.Value = DateTime.Parse(drrr[16].ToString()).ToShortDateString();
                            txt_doc_moaleg.Value = drrr["doc_moaleg"].ToString();
                            txt_elag.Value = drrr["elag"].ToString();
                        }



                    }
                }
            }
            

        }
    }
}