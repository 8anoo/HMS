using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Reseve_OutSide_Clinic1.Visible=false;
                Add_Schedule1.Visible=false;
                
                
                if (Session["type"] == null)
                    Response.Redirect("login.aspx");
                else
                {
                    user.InnerText = Session["type"].ToString();    
                    name.InnerText = Session["user_name"].ToString();
                    if (Session["type"].ToString() == "admin")
                        user.InnerText = "Manager";
                    
                    if (Session["type"].ToString() == "receptienist")
                    {
                        if ((Session["page"].ToString() != "home") && (Session["page"].ToString() != "Add_patient") && (Session["page"].ToString() != "add_ticket"))
                        {
                            Response.Redirect("home.aspx");
                        }
                        Add_Employee1.Visible = false;
                        Edit_Employee_Profile1.Visible = false;
                        Edit_Patient_Profile1.Visible = false;
                        Add_Bed1.Visible = false;
                        Add_Schedule1.Visible = false;
                    }
                    else if (Session["type"].ToString() == "doctor")
                    {
                        if ((Session["page"].ToString() != "home") && (Session["page"].ToString() != "Edit_Patient_Profile"))
                        {
                            Response.Redirect("home.aspx");
                        }
                        
                        Add_patient1.Visible=false;
                        add_ticket1.Visible=false;
                        Add_Bed1.Visible=false;
                        Add_Schedule1.Visible=false;
                        Add_Employee1.Visible = false;
                        Edit_Employee_Profile1.Visible = false;
                        //Edit_Patient_Profile1.Visible = false;
                        Add_Bed1.Visible = false;
                        Add_Schedule1.Visible = false;
                    }
                    else if (Session["type"].ToString() == "nurse")
                    {
                        Add_patient1.Visible=false;
                        add_ticket1.Visible=false;
                        Add_Bed1.Visible=false;
                        Add_Schedule1.Visible=false;
                        Add_Employee1.Visible = false;
                        Edit_Employee_Profile1.Visible = false;
                        //Edit_Patient_Profile1.Visible = false;
                        Add_Bed1.Visible = false;
                        Add_Schedule1.Visible = false;
                    }
                }




                ////////////////////////////////////////////////

                if (Session["page"] != null)
                {
                    //switch (Session["page"].ToString())
                    //{
                    //    case "patient_index" :
                    //        edit_patient_profile.Attributes["class"] = "bg-success";

                    //    default:
                    //        break;
                    //}

                    if (Session["page"].ToString() == "home")
                        home.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "Add_patient")
                        Add_patient.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "add_ticket")
                        add_ticket.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "Add_Employee")
                        Add_Employee.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "Edit_Employee_Profile")
                    {
                        Edit_Employee_Profile.Attributes["class"] += " bg-success";
                    }
                    else if (Session["page"].ToString() == "Edit_Patient_Profile")
                        Edit_Patient_Profile.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "Reseve_OutSide_Clinic")
                        Reseve_OutSide_Clinic.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "Add_Bed")
                        Add_Bed.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "Add_Schedule")
                        Add_Schedule.Attributes["class"] += " bg-success";
                }



            }
        }

        protected void logout_click(object sender, EventArgs e)
        {
            Session["name"] = Session["type"] = null;
            Response.Redirect("login.aspx");
        }

    }
}