<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="add_ticket.aspx.cs" Inherits="GP1.add_ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!------------------------------------------For Body Content ----------------------------------------------------->
    <!-- START PAGE-CONTAINER ------------------------------------------------------------------------------------------------>
    <div class="page-container " dir="rtl" style="margin-top:-76px">

        <asp:Label ID="lbl_save" runat="server" Text=""></asp:Label>
        <!-- START PAGE CONTENT WRAPPER -->
        <div class="page-content-wrapper ">                               
            <!-- START PAGE CONTENT -->
            <div class="content sm-gutter">
                <!-- START CONTAINER FLUID -->
                <div class="container-fluid padding-25 sm-padding-10">
                    <!-- START ROW -->

                    <div class="row text-center" style="background-color: #149a90db; border-radius: 23px; padding: 12px;">
                        

                             <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                                  <form id="contact-form" role="form" dir="rtl">


                            <div class="controls">

                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                <div class="row">
                                    <div class="col-md-4">
                                        <span style="font-size: 1.1em;">Ticket_Number:&nbsp&nbsp </span><span id="txt_ticket_num" runat="server" style="font-size:1.5em;color: #95f775;">mahmoud</span>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="lbl_national">الرقم القومى</label>
                                            
                                            <input id="txt_patient_ssn" runat="server" maxlength="14" type="text" name="phone" class="form-control" placeholder="الرقم القومى"/>
                                            
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill text" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_patient_ssn" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 14 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_patient_ssn" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a"></asp:RegularExpressionValidator>

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                    </div>
                                </div>



                                <div style="background-color: whitesmoke; width: 102.5%; height: 10px; margin-right: -12px;"></div>



                                <div class="row" style="margin-top: 15px;">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="form_phone">القسم العلاجى</label>
                                                    <asp:DropDownList ID="DropDownList3" class="drpdown" runat="server" Width="90%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">

                                                        <asp:ListItem Text="Seleced" Selected="True" Value="0">
                                                        </asp:ListItem>

                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="form_phone">نوع التيكت</label>
                                                    <asp:DropDownList ID="DropDownList5" class="drpdown" runat="server" Width="90%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">

                                                        <asp:ListItem Text="Seleced" Selected="True" Value="0">
                                                        </asp:ListItem>

                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="col-md-3 text-left">
                                                <div class="form-group checkbox_group" style="padding-left: 6%;">
                                                    <label for="form_email">مصدر الدخول</label>

                                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" TextAlign="Left" Style="margin-right:50%;" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Text="إستقبال" Value="0" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="عياده خارجيه" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="محول من" Value="2"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                    <input id="txt_enter_source" runat="server" disabled="disabled" type="text" name="txt_enter_source" class="form-control" placeholder="محول من" required="required" data-error="Valid email is required." />
                                                </div>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="form_phone">القرابه</label>
                                            <input id="txt_q_qaraba" runat="server" type="tel" name="phone" class="form-control" placeholder="القرابه" />
                                            <label for="form_phone">رقم التليفون</label>
                                            
                                            <input id="txt_q_phone" runat="server" type="text" maxlength="11" name="email" class="form-control" placeholder="رقم التليفون" required="required" data-error="Valid email is required."/>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill text" ForeColor="Red" Font-Italic="true" ControlToValidate="txt_q_phone" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must Be Number and 11 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_q_phone" SetFocusOnError="true" ValidationExpression="\d{11}" ValidationGroup="a"></asp:RegularExpressionValidator>


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">إسم قريب المريض</label>
                                            <input id="txt_q_name" runat="server" type="text" name="email" class="form-control" placeholder="إسم قريب المريض" required="required" data-error="Valid email is required."/>
                                            <label for="form_email">عنوانه</label>
                                            <input id="txt_q_address" runat="server" type="text" name="email" class="form-control" placeholder="عنوانه" required="required" data-error="Valid email is required."/>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>

                                


                                

                                <div class="row">
                                    
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>

                                            <div class="col-md-3 text-left">
                                                <div class="form-group checkbox_group" style="padding-left:10%;">
                                                    <label for="form_email">حالة بوليس</label>
                                                    
                                                    <asp:DropDownList ID="DropDownList6" class="drpdown" runat="server" Width="90%" AutoPostBack="True">

                                                        <asp:ListItem Text="نعم" Value="0">
                                                        </asp:ListItem>
                                                        <asp:ListItem Text="لا" Selected="True" Value="1">
                                                        </asp:ListItem>

                                                    </asp:DropDownList>

                                                </div>
                                            </div>

                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="form_phone">السرير</label>
                                                    <asp:DropDownList ID="DropDownList4" class="drpdown" runat="server" Width="90%" AutoPostBack="True">

                                                        <asp:ListItem Text="Seleced" Selected="True" Value="0">
                                                        </asp:ListItem>

                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="form_phone">رقم الحجره</label>
                                                    <%--<input id="form_phone" type="tel" name="phone" class="form-control" placeholder="رقم الحجره">--%>
                                                    <asp:DropDownList ID="DropDownList1" class="drpdown" runat="server" Width="90%" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">

                                                        <asp:ListItem Text="Selected" Selected="True" Value="0">
                                                        </asp:ListItem>

                                                    </asp:DropDownList>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="form_phone">القسم</label>
                                                    <%--<input id="form_phone" type="tel" name="phone" class="form-control" placeholder="رقم الحجره">--%>
                                                    
                                                    <asp:DropDownList ID="DropDownList2" class="drpdown" runat="server" Width="90%" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">

                                                        <asp:ListItem Text="Selected" Selected="True" Value="0">
                                                        </asp:ListItem>

                                                    </asp:DropDownList>

                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <div class="col-md-3">
                                        <!--<div class="form-group">
                                            <label for="form_email">القسم العلاجى</label>
                                            <input id="txt_department" type="text" name="email" class="form-control" placeholder="القسم العلاجى" required="required" data-error="Valid email is required."/>
                                            <div class="help-block with-errors"></div>
                                        </div>-->
                                    </div>
                                </div>

                                

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="form_message">التشخيص الإبتدائى</label>
                                            <textarea id="txt_diagnosing" runat="server" name="diagnosing" class="form-control" placeholder="التشخيص الإبتدائى" rows="4" required="required" data-error="Please,leave us a message."></textarea>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="row">
                                    
                                    <div class="col-md-9">
                                    </div>
                                    <div class="col-md-3">
                                        
                                        <asp:Button ID="Button1" runat="server" Text="إضافة تيكت" style="margin-top: 35px; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;" class="btn btn-block" OnClick="Button1_Click" ValidationGroup="a"/>


                                    </div>
                                </div>
                            </div>
                                
                                
                            </form>
                        </asp:View>

                        <asp:View ID="View2" runat="server">
                            <div class="row" style="background-color: #149a90db; border-radius: 23px; padding: 12px;">
                                <center>
                                    <asp:Image ID="Image1" ImageUrl="~/assets/img/Checked.png" runat="server" Width="20%" Height="10%"/>
                                
                                <br />
                                <asp:Label ID="Lb_done" runat="server" CssClass="lp" style="font-size:22px"></asp:Label>
                                <asp:Button ID="Button2" runat="server" class="btn btn-block" group="a" style="margin-top: 35px; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;" Text="رجوع" OnClick="btnsubmit2_Click" />
                                </center>
                            </div>
                        </asp:View>
                        <!-- END ROW -->
                    </asp:MultiView>
                        
                            <!--<div class="messages"></div>-->

                            
                        




                    </div>

                    <!-- END ROW -->

                </div>
                <!-- END CONTAINER FLUID -->
            </div>
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTENT WRAPPER -->
    </div>
    <!-- END PAGE CONTAINER ------------------------------------------------------------------------------------------------>

</asp:Content>
