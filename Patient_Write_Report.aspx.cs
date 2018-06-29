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
    public partial class Patient_Write_Report : System.Web.UI.Page
    {
        static string patient_ssn;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            patient_ssn = "";
            if (Request.Cookies["Scookie2"] != null)
            {
                HttpCookie cookie1 = Request.Cookies["Scookie2"];
                patient_ssn = cookie1["patient_ssn"].ToString();

            }

            if (!Page.IsPostBack)
            {
                Session["page"] = "patient_write_report";
                SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());

                //////////////////////////////////////////////////////// يارب
                txt_ID_num.Text = patient_ssn.ToString();

                SqlCommand mycom = new SqlCommand("select * from ticket where patient_ssn =" + patient_ssn.ToString(), mycon);
                mycon.Open();
                SqlDataReader mydr0;
                try
                {
                    mydr0 = mycom.ExecuteReader();
                    while (mydr0.Read())
                    {
                        ListItem li_ticket_id = new ListItem(mydr0["ticket_id"].ToString(), mydr0["ticket_id"].ToString());
                        ddl_tickit_num.Items.Add(li_ticket_id);

                    }
                }
                catch
                {
                    ddl_tickit_num.Text = "مالوش تزاكر عندنا";
                }
                mycon.Close();
                SqlCommand mycom1 = new SqlCommand("select name,patient_ssn,YEAR(p_birth_date) as year from patient where patient_ssn=" + patient_ssn.ToString(), mycon);
                SqlDataReader mydr;
                mycon.Open();
                mydr = mycom1.ExecuteReader();
                try
                {
                    while (mydr.Read())
                    {
                        ListItem li = new ListItem(mydr["name"].ToString(), mydr["patient_ssn"].ToString());
                        txt_name_forth.Text = li.Text;

                        ListItem li1 = new ListItem(mydr["year"].ToString(), mydr["patient_ssn"].ToString());
                        int x = 2018 - int.Parse(li1.Text);
                        txt_age.Text = x.ToString();
                    }
                }

                catch
                {
                    txt_name_forth.Text = "مالوش تزاكر عندنا";
                }
                mycon.Close();
                SqlCommand mycom2 = new SqlCommand("select type,gender_id from gender where gender_id=(select gender_id from patient  where patient_ssn=" + patient_ssn.ToString() + " )", mycon);
                SqlDataReader mydr2;
                mycon.Open();
                mydr2 = mycom2.ExecuteReader();
                try
                {
                    while (mydr2.Read())
                    {
                        ListItem li = new ListItem(mydr2["type"].ToString(), mydr2["gender_id"].ToString());
                        txt_gender.Text = li.Text;
                    }
                }

                catch
                {
                    txt_name_forth.Text = "مالوش تزاكر عندنا";
                }
                mycon.Close();
            }
        }
        protected void ddl_ticket_num_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            SqlCommand mycom = new SqlCommand("select enterance_date,ticket_id from ticket where ticket_id=" + ddl_tickit_num.SelectedItem.ToString(), mycon);
            mycon.Open();
            SqlDataReader mydr0;
            try
            {
                mydr0 = mycom.ExecuteReader();
                while (mydr0.Read())
                {
                    ListItem li_ticket_id = new ListItem(mydr0["enterance_date"].ToString(), mydr0["ticket_id"].ToString());
                    date.Text = li_ticket_id.Text;

                }
            }
            catch
            {
                date.Text = "مالوش تزاكر عندنا";
            }
            mycon.Close();
            SqlCommand mycom1 = new SqlCommand("select department_name,department_id from department where department_id=(select department_id from ticket  where ticket_id=" + ddl_tickit_num.SelectedItem.ToString() + ")", mycon);
            mycon.Open();
            SqlDataReader mydr1;
            try
            {
                mydr1 = mycom1.ExecuteReader();
                while (mydr1.Read())
                {
                    ListItem li_dept_id = new ListItem(mydr1["department_name"].ToString(), mydr1["department_id"].ToString());
                    txt_dept.Text = li_dept_id.Text;

                }
            }
            catch
            {
                date.Text = "مالوش تزاكر عندنا";
            }
            mycon.Close();
        }

        protected void bt_add_report_Click(object sender, EventArgs e)
        {
            //values(GETDATE(),7,'zeft','ahmed') 

            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());

            try
            {
                SqlCommand mycom = new SqlCommand("insert into Reports values( GETDATE()," + ddl_tickit_num.SelectedItem + ",'" + txt_Diagnosis.Text + "','" + txt_doctor_name.Text + "')", mycon);
                int rowsaffected = 0;
                mycon.Open();
                rowsaffected = mycom.ExecuteNonQuery();
            }
            catch
            {
                lb_error.Text = "ماتقدرش تكتب تقريرين ف نفس اليوم ";
                mycon.Close();
            }

        }
    }
}