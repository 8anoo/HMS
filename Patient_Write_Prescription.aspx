<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Patient_Write_Prescription.aspx.cs" Inherits="GP1.Patient_Write_Prescription" %>

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

    <!-- START PAGE CONTENT WRAPPER -->
    <div class="page-container ">
        <!-- START PAGE CONTENT -->
        <div class="page-content-wrapper">
            <div class="content sm-gutter">
                <!-- START CONTAINER FLUID -->
                <div class="container-fluid padding-25 sm-padding-10">
                    <!-- START ROW -->
                    <div class="container-fluid padding-25 sm-padding-10" >
                        <div class="row" style="background-color: #149a90db; border-radius: 23px; padding: 12px;margin-top: -100px;margin-left: -39px;margin-right: -38px;">
                            







                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                                  <form id="contact-form" role="form" dir="rtl">

                                
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
                                        <div class="form-group">
                                            <label for="form_phone">القسم العلاجى</label>
                                            <asp:DropDownList ID="DropDownList3" class="drpdown" runat="server" Width="90%" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">

                                                <asp:ListItem Text="Seleced" Selected="True" Value="0">
                                                </asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>


                                    <!-- Line -->
                                    <div style="background-color: whitesmoke; width: 100%; height: 10px; margin-right: -12px;"></div>

                                    

                                    <div class="row" style="margin-top: 6px;">
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label for="form_lastname">رقم المستشفى</label>
                                                <input id="txt_hos_num" runat="server" type="number" required="required" name="surname" class="form-control" placeholder="رقم المستشفى" data-error="Lastname is required."/>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="form_lastname">تاريخ الكشف</label>
                                                <input id="txt_date_kashf" runat="server" required="required" type="text" name="surname" class="form-control date2" placeholder="تاريخ الكشف" data-error="Lastname is required."/>
                                                
                                                <script type="text/javascript">
                                                    $('.date2').datepicker({
                                                        changeMonth: true,
                                                        changeYear: true
                                                    });

                                            </script>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                        <div class="form-group">
                                            <label for="form_name">إسم المريض رابعى</label>
                                            <input id="txt_name" runat="server" type="text" readonly="true" name="name" class="form-control" placeholder="إسم المريض رابعى" required="required" data-error="Firstname is required."/>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    </div>

                                    <div class="row">


                                        <div class="col-md-4">
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="form_phone">الطبيب المعالج</label>
                                                <input id="txt_doc_moaleg" runat="server" type="text" required="required" name="phone" class="form-control" placeholder="الطبيب المعالج"/>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>

                                        <%--<div class="col-md-1">
                                        </div>
                                        <div class="col-md-1">
                                        </div>--%>

                                        <div class="col-md-4">
                                            <%--<div class="form-group">
                                                <label for="form_email">عياده / قسم</label>
                                                <input id="form_email" type="phone" name="email" class="form-control" placeholder="عياده / قسم" data-error="Valid email is required.">
                                                <div class="help-block with-errors"></div>
                                            </div>--%>
                                        </div>


                                        <div class="col-md-1">
                                        </div>

                                    </div>


                                    <!-- Line -->
                                    <div style="background-color: #10cfbd; width: 100%; height: 2px; margin-top: 15px;"></div>

                                    <div class="row">
                                        <div class="col-md-12 text-center">
                                            <p class="text-uppercase" style="margin-top: 13px; font-size: 25px; color: #3ffff2; font-family: initial;">Each Entry Must Be Dated And Signed</p>
                                        </div>
                                    </div>

                                    <!-- Line -->
                                    <div style="background-color: #2a615d; width: 100%; height: 2px;"></div>
                                    <br />



                                    <form id="com">

                                        <div class="row">
                                            <div class="col-md-1">
                                                <div class="form-group">
                                                    <p id="p_numb"></p>

                                                </div>
                                            </div>
                                            <div class="col-md-11">
                                                <div class="form-group">
                                                    <p id="p_word"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <br />
                                    <!-- Line -->
                                    <div style="background-color: #2a615d; width: 100%; height: 2px;"></div>


                                    <div class="row text-center">
                                       
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="form_message">العلاج</label>
                                                <br />
                                                <label for="form_message">النوع - الجرعه - طريقة الإعطاء</label>

                                                <textarea id="txt_elag" runat="server" group="a" required="required" name="message" class="form-control" placeholder="Fill Data...." rows="4" style="height: 225px; min-height: 80px; max-height: 225px; width: 100%; min-width: 100%; max-width: 100%;" data-error="Please,leave us a message."></textarea>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--</form>-->

                                    

                                    <!-- Button Save -->
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
                                            <!--<input type="submit" runat="server"  onclick="btnsub_Click"  value="">-->
                                            <asp:Button ID="btnsubmit" runat="server" class="btn btn-block" group="a" style="margin-top: 35px; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;" Text="إضافة روشته" OnClick="btnsubmit_Click" />
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
                                <asp:Button ID="Button1" runat="server" class="btn btn-block" group="a" style="margin-top: 35px; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;" Text="رجوع" OnClick="btnsubmit2_Click" />
                                </center>
                            </div>
                        </asp:View>
                        <!-- END ROW -->
                    </asp:MultiView>






                        
                        </div>
                    </div>
                    <!-- END ROW -->

                </div>
                <!-- END CONTAINER FLUID -->
            </div>
        </div>
        <!-- END PAGE CONTENT -->
    </div>
    <!-- END PAGE CONTENT WRAPPER -->

</asp:Content>
