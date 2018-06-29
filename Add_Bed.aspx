<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_Bed.aspx.cs" Inherits="GP1.Add_Bed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                 <style>
        .page-container {
            direction: rtl;
        }

        .lp {
            color: #1d3c39;
            margin-right: 3%;
            font-size:150%;
            /*font-weight:500;*/
        }
        .lpp
        {
             color: white;
           padding-top:30px;
            font-size: 150%;
        }

        .p_div {
            color: white;
            margin-top: 30px;
            float: right;
            margin-right: 3%;
            width: 72.5%;
        }


        fieldset {
            margin: 8px;
            border: 1.5px solid silver;
            padding: 8px;
            border-radius: 4px;
        }

        legend {
            width:auto;
            color: #1d3c39;
            text-align: right;
            background-color: transparent;
            padding: 5px;
            border:0px;
          
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
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <div class="row" style="background-color: #149a90db; margin-top: -70px; border-radius: 23px; padding: 12px; padding-top: 100px; padding-bottom: 100px;">
                                <form id="contact-form" role="form">

                                    <div class="controls">
                                        <div class="row">
                                            <asp:Label ID="Label1" runat="server" Text="حدد القسم" CssClass="lp" Width="9%"></asp:Label>
                                            <asp:DropDownList ID="ddl_department" AutoPostBack="true" class="drpdown" Width="25%" runat="server" OnSelectedIndexChanged="ddl_department_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:Label ID="Label2" runat="server" Text="حدد الغرفه" CssClass="lp" Width="9%"></asp:Label>
                                            <asp:DropDownList ID="ddl_room" class="drpdown" AutoPostBack="true" runat="server" Width="25%" OnSelectedIndexChanged="ddl_room_SelectedIndexChanged">
                                            </asp:DropDownList>

                                        </div>
                                        <div class="row" style="text-align: center">
                                            <br />

                                            <asp:Panel ID="Panel1" runat="server" GroupingText=" " CssClass="p_div">
                                                
                                                    <div style="float: right; width: 48.5%; height: 150px;background-color: #3e716e;text-align:center" >
                                                        <br />
                                                         <asp:Label ID="label11" runat="server" Text="عدد السراير الفارغه " CssClass="lpp"></asp:Label>
                                                        <br />
                                                         <br />
                                                        <asp:Label ID="lb_free" runat="server" Text=" " CssClass="lpp"></asp:Label>
                                                    </div>
                                                    <div style="float: left; width: 48.5%; height: 150px; background-color: #3e716e;text-align:center;">
                                                         <br />
                                                        <asp:Label ID="ll" runat="server" Text="عدد السراير المشغوله " CssClass="lpp"></asp:Label>
                                                        <br />
                                                        <br />
                                                        <asp:Label ID="lb_occupied" runat="server" CssClass="lpp" Text=""></asp:Label>
                                                    </div>
                                                
                                            </asp:Panel>
                                            <%--<asp:Label ID="lb_num_beds" runat="server" Text=" " CssClass="lpp" ></asp:Label>--%>
                                            <br />
                                            <div style="width: 72.5%; padding-top: 3%; float: right">
                                                <asp:Button ID="btn_choose" runat="server" Text="اضافه سرير " Style="border: none; float: right; margin-top: 2%; color: #48f5e9; font-size: 20px; background-color: #1d3c39; width: 18%; padding: .9%; margin-right: 5%" class="btn btn-block" OnClick="btn_choose_Click" />
                                                <asp:Button ID="btn_cancel" runat="server" Text="الغاء" Style="border: none; float: right; margin-top: 2%; margin-right: 2%; color: #48f5e9; font-size: 20px; background-color: #1d3c39; width: 18%; padding: .9%" class="btn btn-block" OnClick="btn_cancel_Click" />

                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </asp:View>

                        <asp:View ID="View2" runat="server">
                            <div class="row" style="background-color: #149a90db; border-radius: 23px; padding: 12px;">
                                <center>
                                    <asp:Image ID="Image1" ImageUrl="~/assets/img/Checked.png" runat="server" Width="20%" Height="10%"/>
                                
                                <br />
                                <asp:Label ID="Lb_done" runat="server" CssClass="lp" style="font-size:22px"></asp:Label>
                                </center>
                            </div>
                        </asp:View>
                        <!-- END ROW -->
                    </asp:MultiView>
                </div>
                <!-- END CONTAINER FLUID -->
            </div>
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTENT WRAPPER -->
    </div>
    <!-- END PAGE CONTAINER -->
</asp:Content>
