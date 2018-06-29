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
    public partial class Edit_Employee_Profile : System.Web.UI.Page
    {
        static string date_compare;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "Edit_Employee_Profile";
            string user_id = "";
            if (Request.Cookies["Scookie"] != null)
            {
                HttpCookie cookie = Request.Cookies["Scookie"];
                user_id = cookie["user_id"].ToString();

            }

            if (!Page.IsPostBack)
            {
                Session["page"] = "Edit_Employee_Profile";
                string[] balance = new string[15];
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
                ddl_gender.SelectedValue = user_id.ToString();
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
                ddl_religion.SelectedValue = user_id.ToString();
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
                ddl_nationality.SelectedValue = user_id.ToString();
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
                ddl_department.SelectedValue = user_id.ToString();

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
                ddl_City.SelectedValue = user_id.ToString();
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
                ddl_jop.SelectedValue = user_id.ToString();
                mycon.Close();

                //////////////////////////////////////////////////////////////////////////// الاقليم
                SqlCommand mycom5 = new SqlCommand("select name,region_id from region where city_id =" + ddl_City.SelectedValue, mycon);
                SqlDataReader mydr1;
                mycon.Open();
                mydr1 = mycom5.ExecuteReader();
                ddl_region.DataSource = mydr1;
                ddl_region.DataTextField = "name";
                ddl_region.DataValueField = "region_id";
                ddl_region.DataBind();
                ddl_region.SelectedValue = user_id.ToString();
                mycon.Close();
                /////////////////////////////////////////////////////////////////////////////  الحاله

                //////////////////////////////////////////////////////// يارب

                SqlCommand mycom0 = new SqlCommand("select national_id,user_name,user_id,password,job_id,name,gender_id,marital_state,region_id,nationality_id,email,phone,expires,expire_date,department_id,religion_id from users where user_id =" + user_id, mycon);
                mycon.Open();
                SqlDataReader mydr0;
                mydr0 = mycom0.ExecuteReader();
                while (mydr0.Read())
                {
                    ListItem li_nati = new ListItem(mydr0["national_id"].ToString(), mydr0["user_id"].ToString());
                    ListItem li = new ListItem(mydr0["user_name"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_pass = new ListItem(mydr0["password"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_jop_id = new ListItem(mydr0["job_id"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_name4 = new ListItem(mydr0["name"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_gender_id = new ListItem(mydr0["gender_id"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_marital_state = new ListItem(mydr0["marital_state"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_region_id = new ListItem(mydr0["region_id"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_nationality_id = new ListItem(mydr0["nationality_id"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_email = new ListItem(mydr0["email"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_phone = new ListItem(mydr0["phone"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_expires = new ListItem(mydr0["expires"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_expire_date = new ListItem(mydr0["expire_date"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_department_id = new ListItem(mydr0["department_id"].ToString(), mydr0["user_id"].ToString());
                    ListItem li_religion_id = new ListItem(mydr0["religion_id"].ToString(), mydr0["user_id"].ToString());

                    txt_ID_num.Text = li_nati.Text;
                    txt_user_name.Text = li.Text;
                    txt_pass.Text = li_pass.Text;
                    ddl_jop.SelectedValue = li_jop_id.Text;
                    txt_name_forth.Text = li_name4.Text;
                    ddl_gender.SelectedValue = li_gender_id.Text;

                    /////////// الكوندشن ده مش شايفه علشان غبي وبيخزن الكلام علامات استفهام ف اللداتا بيز وبالتالى مش بيماتش مع اى حد 
                    if (li_marital_state.Text.ToString() == "أعزب")
                    {
                        ddl_status.SelectedValue = "1";
                    }
                    else if (li_marital_state.Text.ToString() == "متزوج")
                    { ddl_status.SelectedValue = "2"; }
                    else if (li_marital_state.Text.ToString() == "مطلق")
                    { ddl_status.SelectedValue = "3"; }
                    else if (li_marital_state.Text.ToString() == "أرمل")
                    { ddl_status.SelectedValue = "4"; }
                    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    ddl_region.SelectedValue = li_region_id.Text;
                    ddl_nationality.SelectedValue = li_nationality_id.Text;
                    txt_email.Text = li_email.Text;
                    txt_phone.Text = li_phone.Text;
                    date.Text = li_expire_date.Text;
                    date_compare = date.Text;
                    ddl_department.SelectedValue = li_department_id.Text;
                    ddl_religion.SelectedValue = li_religion_id.Text;
                    //ناقص بتاع ال " مدينه " والرقم القومى 
                    //ممارس او موظف هاتشك ع قيمه الاكسبير لو صفر يبقى موظف لو واحد ممارس
                    if (li_expires.Text == "False")
                    {
                        DropDownList1.SelectedValue = "2";
                        //////////////////////////////////////////////////////////////// I'm here ///////////////////////////////////////
                        date.Text = "";
                        date.Enabled = false;
                    }
                    //Array 
                    // Label10.Text = date;
                    Array x = new Array[21];

                }

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

            HttpCookie cookie = Request.Cookies["Scookie"];
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            if (DropDownList1.SelectedValue == "1")
            {
                if (date.Text.ToString() == date_compare)
                {
                    SqlCommand mycom = new SqlCommand("update users set user_name='" + txt_user_name.Text.ToString() + "',password='" + txt_pass.Text.ToString() + "',job_id='" + ddl_jop.SelectedValue + "',name='" + txt_name_forth.Text.ToString() + "',gender_id='" + ddl_gender.SelectedValue + "',marital_state='" + ddl_status.SelectedItem + "',region_id='" + ddl_region.SelectedValue + "',nationality_id='" + ddl_nationality.SelectedValue + "',email='" + txt_email.Text.ToString() + "',phone='" + txt_phone.Text.ToString() + "',expires='" + "1" + "',department_id='" + ddl_department.SelectedValue + "',religion_id='" + ddl_religion.SelectedValue + "'WHERE user_id = '" + cookie["user_id"].ToString() + "'", mycon);
                    int rowsaffected = 0;
                    mycon.Open();
                    rowsaffected = mycom.ExecuteNonQuery();
                    mycon.Close();
                }
                else
                {
                    SqlCommand mycom = new SqlCommand("update users set user_name='" + txt_user_name.Text.ToString() + "',password='" + txt_pass.Text.ToString() + "',job_id='" + ddl_jop.SelectedValue + "',name='" + txt_name_forth.Text.ToString() + "',gender_id='" + ddl_gender.SelectedValue + "',marital_state='" + ddl_status.SelectedItem + "',region_id='" + ddl_region.SelectedValue + "',nationality_id='" + ddl_nationality.SelectedValue + "',email='" + txt_email.Text.ToString() + "',phone='" + txt_phone.Text.ToString() + "',expires='" + "1" + "',expire_date='" + date.Text.ToString() + "',department_id='" + ddl_department.SelectedValue + "',religion_id='" + ddl_religion.SelectedValue + "'WHERE user_id = '" + cookie["user_id"].ToString() + "'", mycon);
                    int rowsaffected = 0;
                    mycon.Open();
                    rowsaffected = mycom.ExecuteNonQuery();
                    mycon.Close();
                }

            }

            else if (DropDownList1.SelectedValue == "2")
            {
                SqlCommand mycom = new SqlCommand("update users set user_name='" + txt_user_name.Text.ToString() + "',password='" + txt_pass.Text.ToString() + "',job_id='" + ddl_jop.SelectedValue + "',name='" + txt_name_forth.Text.ToString() + "',gender_id='" + ddl_gender.SelectedValue + "',marital_state='" + ddl_status.SelectedItem + "',region_id='" + ddl_region.SelectedValue + "',nationality_id='" + ddl_nationality.SelectedValue + "',email='" + txt_email.Text.ToString() + "',phone='" + txt_phone.Text.ToString() + "',expires='" + "0" + "',expire_date='" + null + "',department_id='" + ddl_department.SelectedValue + "',religion_id='" + ddl_religion.SelectedValue + "'WHERE user_id = '" + cookie["user_id"].ToString() + "'", mycon);
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