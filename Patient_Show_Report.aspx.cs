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
    public partial class Patient_Show_Report : System.Web.UI.Page
    {
        static string patient_ssn;
        static int c;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            patient_ssn = "";
            if (Request.Cookies["Scookie2"] != null)
            {
                HttpCookie cookie1 = Request.Cookies["Scookie2"];
                patient_ssn = cookie1["patient_ssn"].ToString();

            }
            txt_doctor_name.Text = "";
            txt_Diagnosis.Text = "";
            if (!Page.IsPostBack)
            {
                Session["page"] = "patient_show_report";
                c = 1;
                txt_report_date.Enabled = false;
                txt_report_date.BackColor = System.Drawing.Color.White;
                txt_report_date.ForeColor = System.Drawing.Color.Black;
                txt_report_date.CssClass = "form-control date2";

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

                //select * from Reports where date ='2018-06-12' and ticket_id=10;
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


                //  myTextBox.Attributes.Add("readonly", "readonly");
                // txt_name_forth.Attributes.Add("readonly", "readonly");
                // txt_name_forth.Enabled = false;
                txt_name_forth.ReadOnly = true;
                txt_name_forth.ForeColor = System.Drawing.Color.Black;

                txt_age.ReadOnly = true;
                txt_age.ForeColor = System.Drawing.Color.Black;

                txt_dept.ReadOnly = true;
                txt_dept.ForeColor = System.Drawing.Color.Black;

                txt_ID_num.ReadOnly = true;
                txt_ID_num.ForeColor = System.Drawing.Color.Black;

                txt_gender.ReadOnly = true;
                txt_gender.ForeColor = System.Drawing.Color.Black;

                txt_Diagnosis.ReadOnly = true;
                txt_Diagnosis.ForeColor = System.Drawing.Color.Black;

                txt_doctor_name.ReadOnly = true;
                txt_doctor_name.ForeColor = System.Drawing.Color.Black;

                date.Enabled = false;
                date.CssClass = "form-control date2";
                date.ForeColor = System.Drawing.Color.Black;



            }
        }
        protected void ddl_ticket_num_SelectedIndexChanged(object sender, EventArgs e)
        {

            txt_report_date.Enabled = true;
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

            SqlCommand mycom3 = new SqlCommand("select doctor_name,Diagnosis,ticket_id from Reports where date ='" + txt_report_date.Text + "' and ticket_id=" + ddl_tickit_num.SelectedItem.ToString(), mycon);
            mycon.Open();
            SqlDataReader mydr3;

            mydr3 = mycom3.ExecuteReader();
            while (mydr3.Read())
            {
                ListItem li_doc_name = new ListItem(mydr3["doctor_name"].ToString(), mydr3["ticket_id"].ToString());
                txt_doctor_name.Text = li_doc_name.Text;
                ListItem li_digonisis = new ListItem(mydr3["Diagnosis"].ToString(), mydr3["ticket_id"].ToString());
                txt_Diagnosis.Text = li_digonisis.Text;

            }
            if (c == 0)
            {
                lb_message.Text = "لا يوجد تقرير مسجل لهذه التذكره بهذا التاريخ من فضلك راجع بياناتك ";

                Page.SetFocus(txt_report_date);
            }
            else if (c == 1)
            {
                lb_message.Text = "ادخل التاريخ ";

                Page.SetFocus(txt_report_date);
            }
            else
                lb_message.Text = "لعرض تقرير اخر قم بتحديد رقم التزكره وتاريخ التقرير المراد الاستعلام عنه";


            mycon.Close();


        }

        protected void txt_report_date_TextChanged(object sender, EventArgs e)
        {
            c = 0;
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());

            //select doctor_name,Diagnosis from Reports where date = (select convert(varchar(10), '2018-06-12 21:17:33.933', 120)) and ticket_id=7
            SqlCommand mycom3 = new SqlCommand("select doctor_name,Diagnosis,ticket_id from Reports where date ='" + txt_report_date.Text + "' and ticket_id=" + ddl_tickit_num.SelectedItem.ToString(), mycon);
            mycon.Open();
            SqlDataReader mydr3;

            mydr3 = mycom3.ExecuteReader();
            while (mydr3.Read())
            {
                ListItem li_doc_name = new ListItem(mydr3["doctor_name"].ToString(), mydr3["ticket_id"].ToString());
                txt_doctor_name.Text = li_doc_name.Text;
                ListItem li_digonisis = new ListItem(mydr3["Diagnosis"].ToString(), mydr3["ticket_id"].ToString());
                txt_Diagnosis.Text = li_digonisis.Text;

            }
            if (txt_doctor_name.Text == "")
            {
                lb_message.Text = "لا يوجد تقرير مسجل لهذه التذكره بهذا التاريخ من فضلك راجع بياناتك ";

                Page.SetFocus(txt_report_date);
            }
            else
                lb_message.Text = "لعرض تقرير اخر قم بتحديد رقم التزكره وتاريخ التقرير المراد الاستعلام عنه";


            mycon.Close();

        }
    }
}