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
    public partial class add_employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["page"] = "Add_Employee";

                SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
                SqlCommand mycom = new SqlCommand("select * from gender", mycon);
                SqlDataReader mydr;
                mycon.Open();
                mydr = mycom.ExecuteReader();
                while (mydr.Read())
                {
                    ListItem li = new ListItem(mydr["type"].ToString(), mydr["gender_id"].ToString());
                    ddl_gender.Items.Add(li);
                }

                mycon.Close();

                SqlCommand mycomm = new SqlCommand("select * from religion", mycon);
                SqlDataReader mydrr;
                mycon.Open();
                mydrr = mycomm.ExecuteReader();
                while (mydrr.Read())
                {
                    ListItem li1 = new ListItem(mydrr["religion"].ToString(), mydrr["religion_id"].ToString());
                    ddl_religion.Items.Add(li1);
                }
                mycon.Close();
                SqlCommand mycom1 = new SqlCommand("select * from nationality", mycon);
                SqlDataReader mydrr1;
                mycon.Open();
                mydrr1 = mycom1.ExecuteReader();
                while (mydrr1.Read())
                {
                    ListItem li2 = new ListItem(mydrr1["nationality"].ToString(), mydrr1["nationality_id"].ToString());
                    ddl_nationality.Items.Add(li2);
                }
                mycon.Close();
                // department
                SqlCommand mycom2 = new SqlCommand("select * from department", mycon);
                SqlDataReader mydrr2;
                mycon.Open();
                mydrr2 = mycom2.ExecuteReader();
                while (mydrr2.Read())
                {
                    ListItem li2 = new ListItem(mydrr2["department_name"].ToString(), mydrr2["department_id"].ToString());
                    ddl_department.Items.Add(li2);
                }
                mycon.Close();

                // City
                SqlCommand mycom3 = new SqlCommand("select * from city", mycon);
                SqlDataReader mydrr3;
                mycon.Open();
                mydrr3 = mycom3.ExecuteReader();
                while (mydrr3.Read())
                {
                    ListItem li2 = new ListItem(mydrr3["name"].ToString(), mydrr3["city_id"].ToString());
                    ddl_City.Items.Add(li2);
                }
                mycon.Close();
                ////////////////////////////////////////////////////////////////  jop  /////////////////////////
                SqlCommand mycom4 = new SqlCommand("select * from jobs", mycon);
                SqlDataReader mydrr4;
                mycon.Open();
                mydrr4 = mycom4.ExecuteReader();
                while (mydrr4.Read())
                {
                    ListItem li4 = new ListItem(mydrr4["job_name"].ToString(), mydrr4["job_id"].ToString());
                    ddl_jop.Items.Add(li4);
                }
                mycon.Close();

                //  SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
                SqlCommand mycom5 = new SqlCommand("select name,region_id from region where city_id =" + ddl_City.SelectedValue, mycon);
                SqlDataReader mydr1;
                mycon.Open();
                mydr1 = mycom5.ExecuteReader();
                ddl_region.DataSource = mydr1;
                ddl_region.DataTextField = "name";
                ddl_region.DataValueField = "region_id";
                ddl_region.DataBind();
                mycon.Close();
            }
        }

        protected void ddl_City_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            SqlCommand mycom = new SqlCommand("select * from region where city_id =" + ddl_City.SelectedValue, mycon);
            SqlDataReader mydr1;
            mycon.Open();
            mydr1 = mycom.ExecuteReader();
            ddl_region.DataSource = mydr1;
            ddl_region.DataTextField = "name";
            ddl_region.DataValueField = "region_id";
            ddl_region.DataBind();
            mycon.Close();
        }

        protected void ddl_expire_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "1")
            {

                date.Enabled = true;
                //date.Text = "Default";
            }
            else if (DropDownList1.SelectedValue == "2")
            {

                date.Enabled = false;
                date.Text = "";
                //txttype.Focus();
            }


        }

        protected void btn_save_Click1(object sender, EventArgs e)
        {
            //--user_name-- - password----job_id-- - name----gender_id---- - marital_state-- - region_id-- - nationality_id-- - email

            //phone-- - expiresexpire_date----department_id-- - religion_id

            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            if (DropDownList1.SelectedValue == "1")
            {
                SqlCommand mycom = new SqlCommand("insert into users (national_id,user_name,password,job_id,name,gender_id,marital_state,region_id,nationality_id,email,phone,expires,expire_date,department_id,religion_id) values('" + txt_ID_num.Text + "','" + txt_user_name.Text.ToString() + "','" + txt_pass.Text.ToString() + "','" + ddl_jop.SelectedValue + "','"
                    + txt_name_forth.Text.ToString() + "','" + ddl_gender.SelectedValue + "','" + ddl_status.SelectedItem + "','" + ddl_region.SelectedValue + "','" + ddl_nationality.SelectedValue + "','" + txt_email.Text.ToString() +
                    "','" + txt_phone.Text.ToString() + "','" + "1" + "','" + date.Text.ToString() + "','" + ddl_department.SelectedValue + "','" + ddl_religion.SelectedValue + "')", mycon);
                int rowsaffected = 0;
                mycon.Open();
                rowsaffected = mycom.ExecuteNonQuery();
                mycon.Close();
            }

            else if (DropDownList1.SelectedValue == "2")
            {
                int x = 0;
                SqlCommand mycom = new SqlCommand("insert into users (user_name,password,job_id,name,gender_id,marital_state,region_id,nationality_id,email,phone,expires,department_id,religion_id) values('" + txt_user_name.Text.ToString() + "','" + txt_pass.Text.ToString() + "','" + ddl_jop.SelectedValue + "','"
                    + txt_name_forth.Text.ToString() + "','" + ddl_gender.SelectedValue + "','" + ddl_status.SelectedItem + "','" + ddl_region.SelectedValue + "','" + ddl_nationality.SelectedValue + "','" + txt_email.Text.ToString() +
                    "','" + txt_phone.Text.ToString() + "','" + x + "','" + ddl_department.SelectedValue + "','" + ddl_religion.SelectedValue + "')", mycon);
                int rowsaffected = 0;
                mycon.Open();
                rowsaffected = mycom.ExecuteNonQuery();
                mycon.Close();
            }

            Response.Redirect("home.aspx");
        }


        protected void btn_cancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

    }
}