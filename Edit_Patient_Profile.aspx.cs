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
    
    public partial class Edit_Patient_Profile : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(DataManager.constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "Edit_Patient_Profile";


            //if (!Page.IsPostBack)
            //{
            //    SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            //    SqlCommand mycom = new SqlCommand("select patient_ssn,ticket_id from patient", mycon);
            //    SqlDataReader mydr;
            //    mycon.Open();
            //    mydr = mycom.ExecuteReader();
            //    while (mydr.Read())
            //    {
            //        ListItem li = new ListItem(mydr["patient_ssn"].ToString(), mydr["ticket_id"].ToString());
            //        ddl_select_ssn.Items.Add(li);
            //    }

            //    mycon.Close();


            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataReader dr = DataManager.GetDataReader("select_patient_all", out con,
                            DataManager.CreateParameter("@patient_ssn", System.Data.SqlDbType.BigInt, txt_patient_ssn.Value));
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                
                    /*Session["name"] = dr[2].ToString();
                    Session["type"] = dr[4].ToString();*/
                    Session["patient_ssn"] = dr["patient_ssn"].ToString();
                    Session["name"] = dr["name"].ToString();
                    Session["mobile"] = dr["mobile"].ToString();

                    Session["marital_state"]=dr["marital_state"].ToString();
                    Session["gender_id"]=dr["gender_id"].ToString();
                    Session["p_street"]=dr["p_street"].ToString();
                    Session["p_segel"] = dr["p_segel"].ToString();
                    Session["p_madany"] = dr["p_madany"].ToString();

                    Session["mobile"] = dr["mobile"].ToString();
                    Session["governorate"] = dr["governorate"].ToString();
                    Session["nationality_id"] = dr["nationality_id"].ToString();
                    Session["job"] = dr["job"].ToString();

                    Session["religion_id"] = dr["religion_id"].ToString();
                    Session["job_address"] = dr["job_address"].ToString();
                    Session["p_birth_date"] = dr["p_birth_date"].ToString();

                    //Response.Write("<script>alert('" + dr[2].ToString() + "')</script>");

                    /*
                        dr["name"].ToString();
                        dr["permation_type"].ToString()*/


                    /* علشان الكود بتاعة التلت صفح بتوع فاطنه يشتغلوا ع الكوكى */
                    HttpCookie xx = new HttpCookie("Scookie2");
                    xx.Values.Add("patient_ssn", txt_patient_ssn.Value);/* ddl_select_ssn.SelectedItem.Text */
                    xx.Expires = DateTime.Now.AddDays(5);
                    Response.Cookies.Add(xx);
                    
                    /******************************************************/

                                                            
                    Response.Redirect("Patient_index.aspx");
                }
                }
                else
                {
                    lbl_wrong2.InnerText="Patient Not Found";
                    //lbl_wrong.Text="Patient Not Found";
                }
            
        }

        
        
    }
}