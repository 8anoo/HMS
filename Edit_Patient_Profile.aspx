﻿<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_Patient_Profile.aspx.cs" Inherits="GP1.Edit_Patient_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

                            <!--<div class="messages"></div>-->

                            <div class="controls">

                                <div class="row" style="background-color: #3e716e; border-radius: 15px;">
                                    
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="form_phone">الرقم القومى</label>
                                            <input id="txt_patient_ssn" runat="server" type="number" name="phone" class="form-control" placeholder="الرقم القومى"/>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill text" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_patient_ssn" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 14 digits" ForeColor="Black" Font-Italic="true" ControlToValidate="txt_patient_ssn" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a"></asp:RegularExpressionValidator>                                            

                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>

                                    <div class="col-md-1">
                                    </div>

                                    <div class="col-md-3 text-center">

                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="إختيار" group="a" style="margin-top: 25px; margin-bottom: 15px; border-color: white; color: #48f5e9; font-size: 20px; background-color: #1d3c39;" ValidationGroup="a" class="btn btn-block" />
                                        
                                        <h4 id="lbl_wrong2" runat="server" style="color: #95f775;"></h4>
                                        <!--<asp:Label ID="lbl_wrong" runat="server" Text="m" style="color: #95f775;"></asp:Label>-->                                   
                                        
                                    </div>

                                    <div class="col-md-2">
                                    </div>

                                </div>


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
