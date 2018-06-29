using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class add_ticket : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(DataManager.constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "add_ticket";
            if(!IsPostBack)
            {
                DropDownList1.Enabled = DropDownList4.Enabled = false;

                SqlDataReader drr=DataManager.GetDataReader("select_ticket_number",out con);
                if (drr.HasRows)
                {
                    while (drr.Read())
                    {
                        txt_ticket_num.InnerText = (int.Parse(drr[0].ToString())+1).ToString();
                    }
                }
                else
                {
                    txt_ticket_num.InnerText = 1.ToString();
                }
                
                /* القسم بالنسبه للسراير */

                /* Method One */
                SqlDataReader dr= DataManager.GetDataReader("select_all_dep", out con);
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        DropDownList2.Items.Add(new ListItem(dr["dep_name"].ToString(), dr["dep_id"].ToString()));
                    }
                }

                /* القسم العلاجى */

                /* Method One */
                SqlDataReader dr2 = DataManager.GetDataReader("select_all_department", out con);

                if (dr2.HasRows)
                {
                    while (dr2.Read())
                    {
                        DropDownList3.Items.Add(new ListItem(dr2["department_name"].ToString(), dr2["department_id"].ToString()));
                    }
                }

                /* نوع التيكت */

                /* Method One */
                SqlDataReader dr3 = DataManager.GetDataReader("select_all_ticket_type", out con);

                if (dr3.HasRows)
                {
                    while (dr3.Read())
                    {
                        DropDownList5.Items.Add(new ListItem(dr3["type"].ToString(), dr3["ticket_id"].ToString()));
                    }
                }





                #region Not Work
                /* Method Two */
                //using(DataSet ds=DataManager.GetDataSet("select_all_dep","x"))
                //{
                //    DropDownList2.DataSource=ds.Tables[0];

                //    DropDownList2.DataTextField = "dep_name";
                //    DropDownList2.DataValueField = "dep_id";


                //    DropDownList2.DataBind();
                //} 
                #endregion


            }
        }

        /* القسم */
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            DropDownList1.Enabled = true;
            DropDownList4.Enabled = false;
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add(new ListItem("Selected", "0"));

            /* Method One */
            SqlDataReader dr = DataManager.GetDataReader("select_room", out con,
                DataManager.CreateParameter("@dep_id",SqlDbType.Int,int.Parse(DropDownList2.SelectedItem.Value)));

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    DropDownList1.Items.Add(new ListItem(dr["room_type"].ToString(), dr["room_id"].ToString()));
                }
            }

            //DropDownList2.SelectedItem.Value = "0";

        }

        /* رقم الحجره */
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList4.Enabled = true;
            DropDownList4.Items.Clear();
            DropDownList4.Items.Add(new ListItem("Selected", "0"));

            /* Method One */
            SqlDataReader dr = DataManager.GetDataReader("select_bed", out con,
                DataManager.CreateParameter("@room_id", SqlDbType.Int, int.Parse(DropDownList1.SelectedItem.Value)));

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    DropDownList4.Items.Add(new ListItem(dr["b_id"].ToString(), dr["b_id"].ToString()));
                }
            }
        }

        /* القسم العلاجى */
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        /* نوع التيكت */
        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        /* مصدر الدخول */
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Value == 2.ToString())
            {
                txt_enter_source.Disabled = false;
            }
            else
                txt_enter_source.Disabled = true;
        }

        /* Add Ticket */
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataReader dr = DataManager.GetDataReader("select_patient_ssn", out con,
                            DataManager.CreateParameter("@patient_ssn", SqlDbType.BigInt, txt_patient_ssn.Value));
            if (dr.HasRows)
            {
                    DataManager.ExecuteNonQuery("add_ticket",
                            DataManager.CreateParameter("@patient_ssn", SqlDbType.BigInt, long.Parse(txt_patient_ssn.Value)),
                            DataManager.CreateParameter("@ticket_type_id", SqlDbType.Int, int.Parse(DropDownList5.SelectedItem.Value)),
                            DataManager.CreateParameter("@department_id", SqlDbType.Int, int.Parse(DropDownList1.SelectedItem.Value)),
                            DataManager.CreateParameter("@enterance_source_id", SqlDbType.Int, int.Parse(RadioButtonList1.SelectedItem.Value)),
                            DataManager.CreateParameter("@enterance_source", SqlDbType.NVarChar, txt_enter_source.Value),
                            DataManager.CreateParameter("@q_name", SqlDbType.NVarChar, txt_q_name.Value),
                            DataManager.CreateParameter("@q_qaraba", SqlDbType.NVarChar, txt_q_qaraba.Value),
                            DataManager.CreateParameter("@q_address", SqlDbType.NVarChar, txt_q_address.Value),
                            DataManager.CreateParameter("@q_mobile", SqlDbType.NVarChar, txt_q_phone.Value),
                            DataManager.CreateParameter("@bolis_state", SqlDbType.Int, int.Parse(DropDownList6.SelectedItem.Value)),
                            DataManager.CreateParameter("@b_id", SqlDbType.Int, int.Parse(DropDownList4.SelectedItem.Value)),
                            DataManager.CreateParameter("@diagnosing", SqlDbType.NVarChar, txt_diagnosing.Value));


                    //Response.Write("<script>alert('Data Saved Successfully...');</script>");


                    MultiView1.ActiveViewIndex = 1;
                    Lb_done.Text = " تم حفظ البيانات بنجاح ";

                    //lbl_save.Text = "Data Saved Successfully...";
                //Response.Redirect("home.aspx");
                    
            }
            else
            {
                Response.Write("<script>alert('This Patient Not Add Yet...');</script>");
            }





        }

        protected void btnsubmit2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }


    }
}