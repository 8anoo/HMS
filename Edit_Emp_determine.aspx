<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_Emp_determine.aspx.cs" Inherits="GP1.Edit_Emp_determine" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .page-container {
            direction: rtl;
        }

        .lp {
            float: right;
            color: #10CFBD;
            margin-right: 3%;
            font-size: 22px;
            /*font-weight:500;*/
        }

        .txt_style {
            /*float:left;*/
            /*color: #10CFBD;*/
            /*margin-top: 3%;*/
            width: 55%;
            font-weight: 500;
            padding: 1.3%;
        }
            .lb

        {
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
            width: 100%;
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
    <!-- START PAGE-CONTAINER -->
    <div class="page-container ">
        <!-- START PAGE CONTENT WRAPPER -->
        <div class="page-content-wrapper ">
            <!-- START PAGE CONTENT -->
            <div class="content sm-gutter">
                <!-- START CONTAINER FLUID -->
                <div class="container-fluid padding-25 sm-padding-10">
                    <!-- START ROW -->

                    <div class="row" style="background-color: #149a90db; border-radius: 23px; padding: 12px; padding-top: 100px; padding-bottom: 100px;">
                        <form id="contact-form" role="form" dir="rtl">

                            <div class="controls">
                                <center><div class="row" style="background-color: #3e716e;border-radius: 15px;width:70%;padding-top:2%;" dir="rtl">


                                    <div class="form-group" >
                                        <div style=" width: 100%; padding-top: 1%">
                                            <%--<label for="form_phone">الرقم القومى</label>--%>
                                            <asp:Label ID="Label1" runat="server" Text="من فضلك اختر الرقم القومى " CssClass="lp"></asp:Label>
                                            <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control" CssClass="txt_style" placeholder="الرقم القومى"></asp:TextBox>--%>
                                       <asp:DropDownList ID="ddl_select_ssn" class="drpdown" Width="55%" runat="server"></asp:DropDownList>
                                             </div>
                                        <div style=" width: 93%; padding-top: 1%;float:right">
                                            <asp:Button ID="btn_cancel" runat="server" Text="الغاء" Style="border:none;float: left; margin-top:2%;margin-right:2%; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;width:20%;padding:1%" class="btn btn-block" OnClick="btn_cancel_Click" />
                                            <asp:Button ID="btn_choose" runat="server" Text="اختيار" Style="border:none;float: left; margin-top:2%; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;width:20%;padding:1%" class="btn btn-block" OnClick="btn_choose_Click" />

                                        </div>
                                    </div>
                                </div>
                                    </center>
                            </div>

                        </form>
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