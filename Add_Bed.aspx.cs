using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GP1
{
    public partial class Add_Bed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
                int free = 0, ocuipe = 0, count = 0;
                // dept   select department_name from department 
                SqlCommand mycom3 = new SqlCommand("select * from dep", mycon);
                SqlDataReader mydrr3;
                mycon.Open();
                mydrr3 = mycom3.ExecuteReader();
                while (mydrr3.Read())
                {
                    ListItem li2 = new ListItem(mydrr3["dep_name"].ToString(), mydrr3["dep_id"].ToString());
                    ddl_department.Items.Add(li2);
                }
                mycon.Close();

                SqlCommand mycom5 = new SqlCommand("select room_type,room_id from room where dep_id =" + ddl_department.SelectedValue, mycon);
                SqlDataReader mydr1;
                mycon.Open();
                mydr1 = mycom5.ExecuteReader();

                while (mydr1.Read())
                {
                    ListItem li4 = new ListItem(mydr1["room_type"].ToString(), mydr1["room_id"].ToString());
                    ddl_room.Items.Add(li4);
                }
                mycon.Close();

                DropDownList x = new DropDownList();
                SqlCommand mycom = new SqlCommand("select b_id,b_state from bed where room_id =" + ddl_room.SelectedValue, mycon);
                SqlDataReader mydr;
                mycon.Open();

                mydr = mycom.ExecuteReader();
                while (mydr.Read())
                {
                    ListItem li4 = new ListItem(mydr["b_state"].ToString(), mydr["b_id"].ToString());
                    x.Items.Add(li4);
                    if (mydr["b_state"].ToString() == "0")
                    {
                        free++;
                    }
                    else
                    {
                        ocuipe++;
                    }
                    count++;
                }
                mycon.Close();
                Panel1.GroupingText = "عدد السراير الموجوده ف هذه الغرفه = " + count;
                lb_free.Text = free.ToString();
                lb_occupied.Text = ocuipe.ToString();
            }

        }

        protected void btn_choose_Click(object sender, EventArgs e)
        {
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            SqlCommand mycom = new SqlCommand("insert into bed (b_state,room_id) values('0','" + ddl_room.SelectedValue.ToString() + "')", mycon);
            int rowsaffected = 0, count = 0;
            mycon.Open();
            rowsaffected = mycom.ExecuteNonQuery();
            mycon.Close();
            DropDownList x = new DropDownList();
            SqlCommand mycom5 = new SqlCommand("select b_id from bed where room_id =" + ddl_room.SelectedValue, mycon);
            SqlDataReader mydr1;
            mycon.Open();

            mydr1 = mycom5.ExecuteReader();
            while (mydr1.Read())
            {
                ListItem li4 = new ListItem(mydr1["b_id"].ToString(), mydr1["b_id"].ToString());
                x.Items.Add(li4);
                count++;
            }
            mycon.Close();

            MultiView1.ActiveViewIndex = 1;
            Lb_done.Text = " تم اضافه سرير رقم " + count + " بنجاح ";
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void ddl_department_SelectedIndexChanged(object sender, EventArgs e)
        {
            int count = 0, free = 0, ocuipe = 0;
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            SqlCommand mycom5 = new SqlCommand("select room_type,room_id from room where dep_id =" + ddl_department.SelectedValue, mycon);
            SqlDataReader mydr1;
            mycon.Open();
            mydr1 = mycom5.ExecuteReader();

            ddl_room.DataSource = mydr1;
            ddl_room.DataTextField = "room_type";
            ddl_room.DataValueField = "room_id";
            ddl_room.DataBind();
            mycon.Close();
            DropDownList x = new DropDownList();
            SqlCommand mycom = new SqlCommand("select b_id,b_state from bed where room_id =" + ddl_room.SelectedValue, mycon);
            SqlDataReader mydr;
            mycon.Open();

            mydr = mycom.ExecuteReader();
            while (mydr.Read())
            {
                ListItem li4 = new ListItem(mydr["b_state"].ToString(), mydr["b_id"].ToString());
                x.Items.Add(li4);
                if (mydr["b_state"].ToString() == "0")
                {
                    free++;
                }
                else
                {
                    ocuipe++;
                }
                count++;
            }
            mycon.Close();
            Panel1.GroupingText = "عدد السراير الموجوده ف هذه الغرفه = " + count;
            lb_free.Text = free.ToString();
            lb_occupied.Text = ocuipe.ToString();
        }

        protected void ddl_room_SelectedIndexChanged(object sender, EventArgs e)
        {
            int count = 0, free = 0, ocuipe = 0;
            SqlConnection mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn1"].ToString());
            DropDownList x = new DropDownList();
            SqlCommand mycom = new SqlCommand("select b_id,b_state from bed where room_id =" + ddl_room.SelectedValue, mycon);
            SqlDataReader mydr;
            mycon.Open();

            mydr = mycom.ExecuteReader();
            while (mydr.Read())
            {
                ListItem li4 = new ListItem(mydr["b_state"].ToString(), mydr["b_id"].ToString());
                x.Items.Add(li4);
                if (mydr["b_state"].ToString() == "0")
                {
                    free++;
                }
                else
                {
                    ocuipe++;
                }
                count++;
            }
            mycon.Close();
            Panel1.GroupingText = "عدد السراير الموجوده ف هذه الغرفه = " + count;
            lb_free.Text = free.ToString();
            lb_occupied.Text = ocuipe.ToString();
        }
    }
}