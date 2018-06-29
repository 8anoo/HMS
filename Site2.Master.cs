using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP1
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                inquire1.Visible = false;
                patient_request_medical_analysis1.Visible = false;
                patient_request_medical_radiation1.Visible = false;
                patient_assign_bed1.Visible = false;
                patient_assign_to_another_doctor1.Visible = false;
                patient_print_bill1.Visible = false;

                if (Session["type"] == null)
                    Response.Redirect("login.aspx");
                else
                {
                    user.InnerText = Session["type"].ToString();
                    name.InnerText = Session["user_name"].ToString();
                    if(Session["type"].ToString() =="admin")
                        user.InnerText="Manager";

                    if (Session["type"].ToString() == "receptienist")
                    {
                        Response.Redirect("home.aspx");
                        //add_employee.Visible = false;
                        //edit_employee_profile.Visible = false;
                        //edit_patient_profile.Visible = false;
                        //add_bed.Visible = false;
                        //add_schedule.Visible = false;


                    }
                    else if (Session["type"].ToString() == "nurse")
                    {
                        if ((Session["page"].ToString() != "Patient_index") && (Session["page"].ToString() != "patient_show_report") && (Session["page"].ToString() != "patient_write_prescription"))
                        {
                            Response.Redirect("home.aspx");
                        }
                        
                        write_prescription.InnerHtml="Show Prescription";

                        patient_edit_patient_profile1.Visible=false;
                        patient_add_medical_analysis_report1.Visible = false;
                        patient_write_report1.Visible=false;
                        patient_update_report1.Visible=false;
                        //add_employee.Visible = false;
                        //edit_employee_profile.Visible = false;
                        //edit_patient_profile.Visible = false;
                        //add_bed.Visible = false;
                        //add_schedule.Visible = false;


                    }
                }
                ////////////////////////////////////////////////

                if(Session["page"]!=null)
                {
                    //switch (Session["page"].ToString())
                    //{
                    //    case "patient_index" :
                    //        edit_patient_profile.Attributes["class"] = "bg-success";

                    //    default:
                    //        break;
                    //}

                    if (Session["page"].ToString() == "Patient_index")
                        patient_index.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "inquire")
                        inquire.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_edit_patient_profile")
                        patient_edit_patient_profile.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_write_report")
                        patient_write_report.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_write_prescription")
                        patient_write_prescription.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_update_report")
                        patient_update_report.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_show_report")
                        patient_show_report.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_request_medical_radiation")
                        patient_request_medical_radiation.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_request_medical_analysis")
                        patient_request_medical_analysis.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_add_medical_analysis_report")
                        patient_add_medical_analysis_report.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_assign_bed")
                        patient_assign_bed.Attributes["class"] += " bg-success";
                    else if (Session["page"].ToString() == "patient_assign_to_another_doctor")
                        patient_assign_to_another_doctor.Attributes["class"] += " bg-success";
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