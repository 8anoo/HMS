<%@ Page Title="" EnableEventValidation="false"  Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="add_employee.aspx.cs" Inherits="GP1.add_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
        .text_box{
            width:100%;
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

                    <div class="row" style="background-color: #149a90db; border-radius: 23px; padding: 12px; margin-top: -65px;">
                        <form id="contact-form" role="form" dir="rtl">

                            <!--<div class="messages"></div>-->

                            <div class="controls">

                                <div class="row" style="">

                                    <div class="form-group">
                                        <table class="emp_form">
                                            <tr>
                                                <td>
                                                    <table class="auto-style1">
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
                                                                <asp:Label ID="Label3" runat="server" Text="الرقم القومى" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_ID_num" runat="server" MaxLength="14" class="form-control" placeholder="الرقم القومى" required="required" Width="100%" data-error="Firstname is required."></asp:TextBox>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 11 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_ID_num" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a" BorderStyle="None" Display="Dynamic"></asp:RegularExpressionValidator>
                                                            </td>

                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label4" runat="server" Text="رقم الموبيل" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                
                                                                <asp:TextBox ID="txt_phone" MaxLength="11" runat="server" class="form-control" Width="100%" placeholder="رقم الموبيل" required="required" data-error="Firstname is required."></asp:TextBox>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must Be Number and 11 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_phone" SetFocusOnError="true" ValidationExpression="\d{11}" ValidationGroup="a" CssClass="user-details" Display="Dynamic"></asp:RegularExpressionValidator>
                                                                    

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label9" runat="server" Text="البريد الالكترونى" CssClass="lb" class="form-control"></asp:Label>
                                                            </td>

                                                            <td>
                                                                <asp:TextBox ID="txt_email" runat="server" class="form-control" Width="100%" placeholder="البريد الالكترونى" required="required"  data-error="Firstname is required."></asp:TextBox>
                                                                <asp:RegularExpressionValidator class="form-control" ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label13" runat="server" Text="المدينه" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddl_City" AutoPostBack="True" runat="server" class="drpdown" OnSelectedIndexChanged="ddl_City_SelectedIndexChanged">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label14" runat="server" Text="الاقليم" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddl_region" runat="server" class="drpdown">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label15" runat="server" Text="الاسم" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_user_name" runat="server" class="form-control" Width="100%" placeholder="إسم المستخدم " required="required" data-error="Firstname is required."></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" CssClass="lb" Text="ممارس/ موظف"></asp:Label>
                                                            </td>
                                                            <td style="width: 300px">
                                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                    <ContentTemplate>
                                                                        <asp:DropDownList ID="DropDownList1" AutoPostBack="True" runat="server" class="drpdown" OnSelectedIndexChanged="ddl_expire_SelectedIndexChanged">
                                                                            <asp:ListItem Text="ممارس" Selected="True" Value="1">
                                                                            </asp:ListItem>
                                                                            <asp:ListItem Text="موظف" Value="2">
                                                                            </asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </ContentTemplate>
                                                                 </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td colspan="2">
                                                                <div>
                                                                    <asp:Button ValidationGroup="a" ID="btn_save" runat="server" Text="إضافه" CssClass="form-control" OnClick="btn_save_Click1" Style="color: #48f5e9; font-size: 20px; background-color: #1d3c39; float: right; width: 46%; margin-top: 10%; margin-right: 5%" />
                                                                    <asp:Button ID="btn_cancel" runat="server" Text="الغاء" CssClass="form-control" OnClick="btn_cancel_Click1" Style="margin-top: 10%; color: #48f5e9; font-size: 20px; background-color: #1d3c39; float: left; display: block; width: 46%" ViewStateMode="Disabled"/>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td>
                                                    <table class="auto-style1">
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label5" runat="server" Text="النوع" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddl_gender" runat="server" class="drpdown">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label6" runat="server" Text="الحاله" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddl_status" runat="server" class="drpdown">
                                                                    <asp:ListItem Text="أعزب" Selected="True" Value="1">
                                                                    </asp:ListItem>
                                                                    <asp:ListItem Text="متزوج" Value="2">
                                                                    </asp:ListItem>
                                                                    <asp:ListItem Text="مطلق" Value="3">
                                                                    </asp:ListItem>
                                                                    <asp:ListItem Text="أرمل" Value="4">
                                                                    </asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label7" runat="server" Text="الديانه" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddl_religion" runat="server" class="drpdown">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td class="auto-style2">
                                                                <asp:Label ID="Label8" runat="server" Text="الجنسيه" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td class="auto-style2">
                                                                <asp:DropDownList ID="ddl_nationality" runat="server" class="drpdown">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td class="auto-style2">
                                                                <asp:Label ID="Label11" runat="server" Text="القسم" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td class="auto-style2">
                                                                <asp:DropDownList ID="ddl_department" runat="server" class="drpdown">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td class="auto-style2">
                                                                <asp:Label ID="Label12" runat="server" Text="الصلاحيه للمستخدم" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td class="auto-style2">
                                                                <asp:DropDownList ID="ddl_jop" runat="server" class="drpdown">
                                                              
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td class="auto-style2">
                                                                <asp:Label ID="Label10" runat="server" Text="الرقم السرى" CssClass="lb"></asp:Label>
                                                            </td>
                                                            <td class="auto-style2">
                                                                <asp:TextBox ID="txt_pass" runat="server" Width="100%" class="form-control" placeholder="  الرقم السرى" required="required" data-error="Firstname is required."></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>

                                                            <td>
                                                                <asp:Label ID="Label16" runat="server" CssClass="lb" class="tr_disable" Text="تاريخ انتهاء الصلاحيه"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                    <ContentTemplate>
                                                                        <div class="tr_disable">
                                                                            <asp:TextBox ID="date" runat="server" Width="100%" class="form-control date2" placeholder="تاريخ الانتهاء" required="required" data-error="Firstname is required."></asp:TextBox>


                                                                            <%--<input runat="server" id="date" class="form-control date2"  placeholder="عنوان العمل" required="required" />--%>

                                                                            <script type="text/javascript">
                                                                                $('.date2').datepicker({
                                                                                    changeMonth: true,
                                                                                    changeYear: true
                                                                                });

                                                                            </script>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                                
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div style="width: 100%; height: 75px"></div>
                                                            </td>
                                                            <td>
                                                                <div style="width: 300px; height: 75px"></div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                </div>

                            </div>
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