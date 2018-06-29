<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Patient_Edit_Patient_Profile.aspx.cs" Inherits="GP1.Patient_Edit_Patient_Profile" %>

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




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="page-container ">
    <!-- START PAGE CONTENT WRAPPER -->
    <div class="page-content-wrapper " >
        <!-- START PAGE CONTENT -->
        <div class="content sm-gutter">
            <!-- START CONTAINER FLUID -->
            <div class="container-fluid padding-25 sm-padding-10">
                <!-- START ROW -->
                    <div class="container-fluid padding-25 sm-padding-10" >
                    <!-- START ROW style="margin-top:-76px" -->
                        <div class="row" style="background-color: #149a90db;border-radius: 23px;padding: 12px;margin-top: -100px;margin-left: -39px;margin-right: -38px;">
                            <form id="contact-form" role="form" dir="rtl">
                                <!--<div class="messages"></div>-->
                                <div class="controls">
                                <div class="row">
                                    <div class="col-md-4" style="padding-left:1%;" dir="ltr">
                                        <span style="font-size: 1.1em;">Name:&nbsp&nbsp </span><span id="txt_patient_name" runat="server" style="font-size:1.5em;color: #95f775;">mahmoud</span>
                                        <br />
                                        <span style="font-size: 1.1em;">Phone:&nbsp&nbsp </span><span id="txt_patient_phone" runat="server" style="font-size:1.5em;color: #95f775;">01094025755</span>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="form_phone">الرقم القومى</label>
                                            <input id="txt_patient_ssn" runat="server" maxlength="14" type="text" name="phone" class="form-control" style="font-size: 1.6em;color: #3faf52;font-family: monospace;" placeholder="الرقم القومى"/>
                                            <div class="help-block with-errors"></div>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill text" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_patient_ssn" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 14 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_patient_ssn" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                    </div>
                                </div>
                                <div style="background-color: whitesmoke; width: 100%; height: 10px; margin-right: -12px;"></div>
                                <div class="row" style="margin-top: 6px;">
                                    <div class="col-md-2">
                                        <%--<div class="form-group">
                                            <label for="form_lastname">رقم المستشفى</label>
                                            <input id="form_lastname" type="text" name="surname" class="form-control" placeholder="رقم المستشفى" required="required" data-error="Lastname is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>--%>
                                    </div>
                                    <div class="col-md-1">
                                        <div class="form-group checkbox_group">
                                            <label for="form_lastname">الحاله</label>
                                            <%--<div>
                                                <input type="checkbox" name=""><span style="margin-left: 6px;">أعزب</span></div>
                                            <div>
                                                <input type="checkbox" name=""><span style="margin-left: 6px;">متزوج</span></div>
                                            <div>
                                                <input type="checkbox" name=""><span style="margin-left: 6px;">مطلق</span></div>
                                            <div>
                                                <input type="checkbox" name=""><span style="margin-left: 6px;">أرمل</span></div>--%>



                                            <asp:DropDownList ID="DropDownList3" class="drpdown" runat="server" Width="90%">
                                        
                                                    <%--<asp:ListItem Text="Selected--" Value="0">
                                                    </asp:ListItem>--%>
                                                    <asp:ListItem Text="أعزب" Selected="True" Value="1">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="متزوج" Value="2">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="مطلق" Value="3">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="أرمل" Value="4">
                                                    </asp:ListItem>


                                            </asp:DropDownList>



                                            <%--<asp:RadioButtonList ID="RadioButtonList2" runat="server" required="required">
                                                <asp:ListItem Text="أعزب" Value="0">&nbsp;&nbsp;أعزب</asp:ListItem>
                                                <asp:ListItem Text="متزوج" Value="1">&nbsp;&nbsp;متزوج</asp:ListItem>
                                                <asp:ListItem Text="مطلق" Value="2">&nbsp;&nbsp;مطلق</asp:ListItem>
                                                <asp:ListItem Text="أرمل" Value="3">&nbsp;&nbsp;أرمل</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="required" ControlToValidate="RadioButtonList2" SetFocusOnError="true"></asp:RequiredFieldValidator>--%>

                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <div class="form-group checkbox_group">
                                            <label for="form_lastname">النوع</label>
                                            <%--<input id="form_lastname" type="text" name="surname" class="form-control" placeholder="السن" required="required" data-error="Lastname is required.">--%>
                                            <%--<div>
                                                <input type="checkbox" name=""/><span style="margin-left: 6px;">ذكر</span>
                                            </div>
                                            <div>
                                                <input type="checkbox" name=""/><span style="margin-left: 6px;">أنثى</span>
                                            </div>--%>




                                            <asp:DropDownList ID="DropDownList2" class="drpdown" runat="server" Width="90%">
                                        
                                                    <%--<asp:ListItem Text="Selected--" Value="0">
                                                    </asp:ListItem>--%>
                                                    <asp:ListItem Text="ذكر" Selected="True" Value="1">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="أنثى" Value="2">
                                                    </asp:ListItem>
                                                    

                                                </asp:DropDownList>



                                            <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" required="required">
                                                <asp:ListItem Text="ذكر" Value="0">&nbsp;&nbsp;ذكر</asp:ListItem>
                                                <asp:ListItem Text="أنثى" Value="1">&nbsp;&nbsp;أنثى</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="RadioButtonList1" SetFocusOnError="true"></asp:RequiredFieldValidator>--%>

                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_lastname">رقم البطاقه</label>
                                            <input id="txt_p_street" runat="server" type="text" name="surname" class="form-control" placeholder="ش/ع" required="required" data-error="Lastname is required."/>
                                            <input id="txt_p_segel" runat="server" type="text" name="" style="margin-top: 2px;" class="form-control" placeholder="سجل" required="required" data-error="Lastname is required."/>
                                            <input id="txt_p_madany" runat="server" type="text" name="" style="margin-top: 2px;" class="form-control" placeholder="مدنى" required="required" data-error="Lastname is required."/>

                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="form_name">إسم المريض رابعى</label>
                                            <input id="txt_name" runat="server" type="text" name="name" class="form-control" placeholder="إسم المريض رابعى" required="required" data-error="Firstname is required."/>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- لما يبقى يجى ضرار -->
                                <%--<div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="form_email">متفرع من شارع</label>
                                            <input id="form_email" type="text" name="email" class="form-control" placeholder="متفرع من شارع" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="form_phone">اسم الشارع</label>
                                            <input id="form_phone" type="text" name="phone" class="form-control" placeholder="اسم الشارع">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="form_email">محل الإقامه الدائم / منزل رقم</label>
                                            <input id="form_email" type="phone" name="email" class="form-control" placeholder="رقم المنزل" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>


                                </div>--%>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">رقم التليفون</label>
                                            <input id="txt_phone" runat="server" type="text" maxlength="11" name="email" class="form-control" placeholder="رقم التليفون" required="required" data-error="Valid email is required."/>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill text" ForeColor="Red" Font-Italic="true" ControlToValidate="txt_phone" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must Be Number and 11 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_phone" SetFocusOnError="true" ValidationExpression="\d{11}" ValidationGroup="a"></asp:RegularExpressionValidator>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">محافظة</label>

                                            <asp:DropDownList ID="DropDownList5" class="drpdown" runat="server" Width="90%">
                                        
                                                    <%--<asp:ListItem Text="Selected--" Value="0">
                                                    </asp:ListItem>--%>
                                                    
                                                    <asp:ListItem Text="المنيا" Selected="True" Value="1">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="بنى سويف" Value="2">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="أسيوط" Value="3">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="سوهاج" Value="4">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="أسوان" Value="5">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="قنا" Value="6">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="القاهره" Value="7">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="الدقهليه" Value="8">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="بنها" Value="9">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="الاسكندريه" Value="10">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="السويس" Value="11">
                                                    </asp:ListItem>
                                                    

                                                </asp:DropDownList>
                                            <%--<input id="txt_region" runat="server" type="text" name="email" class="form-control" placeholder="محافظة" required="required" data-error="Valid email is required."/>
                                            <div class="help-block with-errors"></div>--%>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">الجنسيه</label>

                                            <asp:DropDownList ID="DropDownList4" class="drpdown" runat="server" Width="90%">
                                        
                                                    <%--<asp:ListItem Text="Selected--" Value="0">
                                                    </asp:ListItem>--%>
                                                    <asp:ListItem Text="مصرى" Selected="True" Value="1">
                                                    </asp:ListItem>
                                                    <%--<asp:ListItem Text="أنثى" Value="2">
                                                    </asp:ListItem>--%>
                                                    

                                                </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_phone">المهنه</label>
                                            <input id="txt_job" runat="server" type="text" name="phone" class="form-control" placeholder="المهنه">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <%--<div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_phone">تابع قسم شرطة</label>
                                            <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="تابع قسم شرطة">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">إسم الحى</label>
                                            <input id="form_email" type="" name="email" class="form-control" placeholder="إسم الحى" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>--%>
                                </div>
                                <div class="row">
                                    <%--<div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">تاريخ الميلاد</label>
                                            <input id="form_email" type="" name="email" class="form-control" placeholder="تاريخ الميلاد" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>--%>
                                    
                                    <%--<div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">جهة العمل</label>
                                            <input id="form_email" type="" name="email" class="form-control" placeholder="جهة العمل" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>--%>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <%--<div class="form-group">
                                            <label for="form_email">محل الميلاد</label>
                                            <input id="form_email" type="" name="email" class="form-control" placeholder="محل الميلاد" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>--%>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group checkbox_group" style="padding-left:10%;">
                                            <label for="form_email">الديانه</label>
                                            <%--<input id="txt_religion" type="" name="email" class="form-control" placeholder="الديانه" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>--%>


                                            <asp:DropDownList ID="DropDownList1" class="drpdown" runat="server" Width="90%">
                                        
                                                    <%--<asp:ListItem Text="Selected--" Value="0">
                                                    </asp:ListItem>--%>
                                                    <asp:ListItem Text="مسلم" Selected="True" Value="1">
                                                    </asp:ListItem>
                                                    <asp:ListItem Text="مسيحى" Value="2">
                                                    </asp:ListItem>
                                                    

                                                </asp:DropDownList>

                                            <%--<asp:RadioButtonList ID="RadioButtonList3" runat="server" required="required">
                                                <asp:ListItem Text="مسلم" Value="0">&nbsp;&nbsp;مسلم</asp:ListItem>
                                                <asp:ListItem Text="مسيحى" Value="1">&nbsp;&nbsp;مسيحى</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="required" ControlToValidate="RadioButtonList3" SetFocusOnError="true"></asp:RequiredFieldValidator>--%>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_phone">عنوان العمل</label>
                                            <input id="txt_address" runat="server"  type="text" name="phone" class="form-control" placeholder="عنوان العمل" />

                                            
                                            <%--<asp:TextBox runat="server" required="required" ID="txt_address" class="form-control" placeholder="عنوان العمل"></asp:TextBox>--%>
                                            <%--<input required="required" id="txt_address" class="form-control" placeholder="عنوان العمل" runat="server" />
                                            
                                            <script type="text/javascript">

                                                $('#txt_address').datepicker({});

                                            </script>--%>


                                            


                                            <%--<input runat="server" id="date2" class="form-control" placeholder="عنوان العمل" required="required" />
                                            <script type="text/javascript">
                                                $('#date2').datepicker({});
                                            </script>--%>
                                            <%--<span class="input-group-addon" id="date"><i class="glyphicon glyphicon-calendar"></i></span>
                                            <div class="help-block with-errors"></div>--%>

                                            <!--<script type="text/javascript">

                                                $('#txt_address').datepicker({});

                                            </script>-->

                                            


                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="form_email">تاريخ الميلاد</label>
                                            <%--<input id="form_email" type="" name="email" class="form-control" placeholder="تاريخ الميلاد" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div> form-control date --%>

                                            <input runat="server" id="date" class="form-control date2" placeholder="mm/dd/yyyy" required="required" />
                                            <script type="text/javascript">
                                                $('.date2').datepicker({
                                                    changeMonth: true,
                                                    changeYear: true
                                                });
                                            </script>

                                            <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" SelectedDate="1996-01-01" VisibleDate="1996-01-01">
                                                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                        <OtherMonthDayStyle ForeColor="#999999" />
                                                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                        <WeekendDayStyle BackColor="#CCCCFF" />
                                                    </asp:Calendar>

                                                </ContentTemplate>
                                            </asp:UpdatePanel>--%>

                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <!--<div class="col-md-12">
                            <div class="form-group">
                                <label for="form_message">Message *</label>
                                <textarea id="form_message" name="message" class="form-control" placeholder="Message for me *" rows="4" required="required" data-error="Please,leave us a message."></textarea>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>-->
                                    <div class="col-md-9">
                                    </div>
                                    <div class="col-md-3">
                                        
                                        <asp:Button ID="Button1" runat="server" Text="تعديل" style="margin-top: 35px; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;" class="btn btn-block" OnClick="Button1_Click" ValidationGroup="a"/>
                                    
                                    </div>
                                </div>

                            </div>
                            </form>
                        </div>

                <!-- END ROW -->
                    </div>
            </div>
            <!-- END CONTAINER FLUID -->
        </div>
        <!-- END PAGE CONTENT -->
    </div>
    <!-- END PAGE CONTENT WRAPPER -->
</div>

</asp:Content>
