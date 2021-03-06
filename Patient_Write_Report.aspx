﻿<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Patient_Write_Report.aspx.cs" Inherits="GP1.Patient_Write_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link class="main-stylesheet" href="pages/css/pages.css" rel="stylesheet" type="text/css" />

    <link href="pages/css/jquery-ui.css" rel="stylesheet" />

    <script src="pages/js/jquery-ui.js"></script>
    <script src="pages/js/jquery-ui.min.js"></script>
    <script src="pages/js/jquery.1.11.1.js"></script>
    <script src="pages/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style>
        .lb {
            color: #1E1E1E;
            font-size: 19px;
            margin-bottom: 20px;
            font-weight: 400;
        }

        .emp_form {
        }

            .emp_form td {
                padding: 10px;
                /*height:70px;*/
            }

        .text_box {
            width: 150%;
        }

        .tr_disable {
        }

        .page-container {
            direction: rtl;
        }

        .dropbtn {
            background-color: #075050;
            color: white;
            padding: 2%;
            font-size: 16px;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 15px;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            /*display: none;
            position: absolute;*/
            background-color: #f9f9f9;
            width: 520%;
            /*min-width: 160px;*/
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            text-align: center;
        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #f1f1f1;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #0e9696;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!------------------------------------------For Body Content ----------------------------------------------------->
    <!-- START PAGE-CONTAINER ---------------------------------------------------------------------------------------->
    <div class="page-container ">

        <!-- START PAGE CONTENT WRAPPER -->
        <div class="page-content-wrapper">
            <!-- START PAGE CONTENT -->
            <div class="content sm-gutter">
                <!-- START CONTAINER FLUID -->
                <div class="container-fluid padding-25 sm-padding-10">
                    <!-- START ROW style="margin-top:-76px" -->

                    <div class="row" style="background-color: #149a90db; border-radius: 23px; padding: 12px; margin-top: -75px;">
                        <form id="contact-form" role="form" dir="rtl">
                            <!--<div class="messages"></div>-->
                            <div class="controls">
                                <asp:Label ID="lb_error" runat="server" Text="" CssClass="lb"></asp:Label>
                                <table class="emp_form">
                                    <tr>
                                        <td>
                                            <table class="auto-style1">

                                                <tr>
                                                    <td class="auto-style2">
                                                        <asp:Label ID="Label1" runat="server" Text="رقم التزكره" CssClass="lb"></asp:Label>
                                                    </td>
                                                    <td class="auto-style2">
                                                        <asp:DropDownList ID="ddl_tickit_num" AutoPostBack="True" runat="server" class="drpdown" OnSelectedIndexChanged="ddl_ticket_num_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label2" runat="server" Text="الاسم رباعى" CssClass="lb"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_name_forth" runat="server" CssClass="form-control" placeholder="الاسم رباعى" required="required" Width="100%" data-error="Firstname is required."></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td>
                                                        <asp:Label ID="Label16" runat="server" CssClass="lb" class="tr_disable" Text="تاريخ الكشف"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <div class="tr_disable">
                                                            <asp:TextBox ID="date" runat="server" Width="100%" class="form-control date2" placeholder="تاريخ الكشف" required="required" data-error="Firstname is required."></asp:TextBox>
                                                            <script type="text/javascript">
                                                                $('.date2').datepicker({
                                                                    changeMonth: true,
                                                                    changeYear: true
                                                                });
                                                            </script>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td>
                                                        <asp:Label ID="Label15" runat="server" Text="الطبيب المعالج" CssClass="lb"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_doctor_name" runat="server" class="form-control" Width="100%" placeholder="الطبيب المعالج" required="required" data-error="Firstname is required."></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height: 3px">
                                                    <td>
                                                        <div style="width: 100%; height: 3px"></div>
                                                    </td>
                                                    <td>
                                                        <div style="width: 300px; height: 3px"></div>
                                                    </td>
                                                </tr>

                                            </table>
                                        </td>
                                        <td>
                                            <table class="auto-style1">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label3" runat="server" Text="الرقم القومى" CssClass="lb"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_ID_num" runat="server" MaxLength="14" class="form-control" placeholder="الرقم القومى" required="required" Width="100%" data-error="Firstname is required."></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 11 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_ID_num" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a" BorderStyle="None" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        <asp:Label ID="Label10" runat="server" Text="السن" CssClass="lb"></asp:Label>
                                                    </td>
                                                    <td class="auto-style2">
                                                        <asp:TextBox ID="txt_age" runat="server" Width="100%" class="form-control" placeholder="السن" required="required" data-error="Firstname is required."></asp:TextBox>
                                                    </td>
                                                </tr>

                                                <tr>

                                                    <td>
                                                        <asp:Label ID="Label5" runat="server" Text="النوع" CssClass="lb"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txt_gender" runat="server" Width="100%" class="form-control" placeholder="النوع" required="required" data-error="Firstname is required."></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td class="auto-style2">
                                                        <asp:Label ID="Label8" runat="server" Text="القسم" CssClass="lb"></asp:Label>
                                                    </td>
                                                    <td class="auto-style2">
                                                        <asp:TextBox ID="txt_dept" runat="server" Width="100%" class="form-control" placeholder="القسم" required="required" data-error="Firstname is required."></asp:TextBox>

                                                    </td>
                                                </tr>
                                                <tr style="height: 3px">
                                                    <td>
                                                        <div style="width: 100%; height: 3px"></div>
                                                    </td>
                                                    <td>
                                                        <div style="width: 300px; height: 3px"></div>
                                                    </td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="form-group">
                                                <asp:Label ID="Label4" runat="server" Text="التشخيص" CssClass="lb" class="tr_disable"></asp:Label>
                                                <div style="height: 3px"></div>
                                                <asp:TextBox id="txt_Diagnosis" TextMode="multiline" Columns="50" Rows="4" runat="server"  class="form-control" placeholder="التشخيص"  group="a"  required="required" style="height: 80px; min-height: 80px; width: 100%; min-width: 100%; max-width: 100%;" data-error="Please,leave us a message." />
                                               
                                                 <div class="help-block with-errors"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">

                                            <!-- Line -->
                                            <div style="background-color: #2a615d; width: 100%; height: 2px;"></div>
                                            <br />

                                            <div class="row">
                                                <div class="col-md-12 text-center">
                                                    <p style="margin: 13px; font-size: 25px; color: #3ffff2; font-family: initial;">سوف يسجل التقرير بتاريخ اليوم</p>
                                                </div>
                                            </div>
                                            <!-- Line -->
                                            <div style="background-color: #2a615d; width: 100%; height: 2px;"></div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="col-md-9">
                                            </div>
                                            <div class="col-md-3">
                                                <asp:Button ID="bt_add_report" group="a" runat="server" Text="اضافه تقرير " Style="margin-top: 35px; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;" class="btn btn-block" OnClick="bt_add_report_Click" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </form>
                        <!-------------------------------------------------------->
                    </div>
                    <!-- END ROW -->
                </div>
                <!-- END CONTAINER FLUID -->
            </div>
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTENT WRAPPER -->
    </div>
    <!-- END PAGE CONTAINER -->


</asp:Content>
