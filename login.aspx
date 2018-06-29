﻿<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GP1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
    <link rel="apple-touch-icon" href="pages/ico/60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="pages/ico/76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="pages/ico/120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="pages/ico/152.png">
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="pages/css/pages.css" rel="stylesheet" type="text/css" />
    <!--[if lte IE 9]>
        <link href="pages/css/ie9.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <script type="text/javascript">
        window.onload = function () {
            // fix for windows 8
            if (navigator.appVersion.indexOf("Windows NT 6.2") != -1)
                document.head.innerHTML += '<link rel="stylesheet" type="text/css" href="pages/css/windows.chrome.fix.css" />'
        }
    </script>
</head>
<%--<body style="background-image: url(assets/img/demo/new-york-city-buildings-sunrise-morning-hd-wallpaper.jpg)>--%>
<body style="background-image: url(assets/img/demo/new-york-city-buildings-sunrise-morning-hd-wallpaper.jpg); background-repeat: repeat-y; background-attachment: fixed; background-size: 100%;background-color: #277d7d38;">
    <form id="form1" runat="server">
        <div>
            <div class="login-wrapper ">
                <!-- START Login Background Pic Wrapper-->
                <div class="bg-pic">
                    <!-- START Background Pic-->
                    <%--<img src="assets/img/demo/new-york-city-buildings-sunrise-morning-hd-wallpaper.jpg" data-src="assets/img/demo/new-york-city-buildings-sunrise-morning-hd-wallpaper.jpg" data-src-retina="assets/img/demo/new-york-city-buildings-sunrise-morning-hd-wallpaper.jpg" alt="" class="lazy">--%>
                    <!-- END Background Pic-->
                    <!-- START Background Caption-->
                    <div class="bg-caption pull-bottom sm-pull-bottom text-white p-l-20 m-b-20">
                        <h2 class="semi-bold text-white">Hello To Our Hospital</h2>
                        <p class="small">
                            <span style="color: #66beff; font-size: 18px;">This Letter Will Change Later</span>
                            <br>
                            images Displayed are solely for representation purposes only, All work copyright of respective owner, otherwise © 2013-2014 REVOX.
         
                        </p>
                    </div>
                    <!-- END Background Caption-->
                </div>
                <!-- END Login Background Pic Wrapper-->
                <!-- START Login Right Container-->
                <div class="login-container bg-white" style="background-color: #8790a0a1;border-radius: 0px 0px 0px 78px;">
                    <div class="p-l-50 m-l-20 p-r-50 m-r-20 p-t-50 m-t-30 sm-p-l-15 sm-p-r-15 sm-p-t-40">
                        <!--<img src="assets/img/logo.png" alt="logo" data-src="assets/img/logo.png" data-src-retina="assets/img/logo_2x.png" width="78" height="22">-->
                        <span style="color: #7ee8fe; font-size: 32px;">Login</span>
                        <%--<p class="p-t-35">--%>
                            <h1 style="margin-top:30px;margin-bottom:30px;">( H M S )</h1>
                        <%--</p>--%>
                        <!-- START Login Form -->
                        <form id="form-login" class="p-t-15" role="form" action="index.html">
                            <!-- START Form Control-->
                            <div class="form-group form-group-default" style="border:1.5px solid rgba(109, 92, 174, 0.68);border-radius:12px;margin-bottom:30px;">
                                <label>Login</label>
                                <div class="controls">
                                    <input type="text" id="user_name" runat="server"  name="username" placeholder="User Name" class="form-control" required="required">
                                </div>
                            </div>
                            <!-- END Form Control-->
                            <!-- START Form Control-->
                            <div class="form-group form-group-default" style="border:1.5px solid rgba(109, 92, 174, 0.68);border-radius:12px;">
                                <label>Password</label>
                                <div class="controls">
                                    <input type="password" id="password" runat="server" class="form-control" name="password" placeholder="Credentials" required="required">
                                </div>
                            </div>
                            <!-- START Form Control-->
                            <div class="row">
                                <!--<div class="col-md-6 no-padding">
                                    <div class="checkbox ">
                                        <input type="checkbox" value="1" id="checkbox1">
                                        <label for="checkbox1">Keep Me Signed in</label>
                                    </div>
                                </div>
                                <div class="col-md-6 text-right" style="margin-top: 11px;">
                                    <a href="#" class="text-info small"><span style="font-size: 15px; color: #2aa3f5;">Forget Password ?</span></a>
                                </div>-->
                            </div>
                            <!-- END Form Control-->
                            <button id="btn1" runat="server" onserverclick="btn1_Click" class="btn btn-primary btn-cons m-t-10" type="submit" style="margin-bottom:20px;background-color: #459fbc;border-color: #09405f;">Sign in</button>
                        </form>
                        <!--END Login Form-->
                        <!--<div class="pull-bottom sm-pull-bottom">
            <div class="m-b-30 p-r-80 sm-m-t-20 sm-p-r-15 sm-p-b-20 clearfix">
              <div class="col-sm-3 col-md-2 no-padding">
                <img alt="" class="m-t-5" data-src="assets/img/demo/pages_icon.png" data-src-retina="assets/img/demo/pages_icon_2x.png" height="60" src="assets/img/demo/pages_icon.png" width="60">
              </div>
              <div class="col-sm-9 no-padding m-t-10">
                <p>
                  <small>
									Create a pages account. If you have a facebook account, log into it for this
									process. Sign in with <a href="#" class="text-info">Facebook</a> or <a href="#"
									                                                                       class="text-info">Google</a>
								</small>
                </p>
              </div>
            </div>
          </div>-->
                    </div>
                </div>
                <!-- END Login Right Container-->
            </div>
            <!-- START OVERLAY -->
            <div class="overlay hide" data-pages="search">
                <!-- BEGIN Overlay Content !-->
                <div class="overlay-content has-results m-t-20">
                    <!-- BEGIN Overlay Header !-->
                    <div class="container-fluid">
                        <!-- BEGIN Overlay Logo !-->
                        <img class="overlay-brand" src="assets/img/logo.png" alt="logo" data-src="assets/img/logo.png" data-src-retina="assets/img/logo_2x.png" width="78" height="22">
                        <!-- END Overlay Logo !-->
                        <!-- BEGIN Overlay Close !-->
                        <a href="#" class="close-icon-light overlay-close text-black fs-16">
                            <i class="pg-close"></i>
                        </a>
                        <!-- END Overlay Close !-->
                    </div>
                    <!-- END Overlay Header !-->
                    <div class="container-fluid">
                        <!-- BEGIN Overlay Controls !-->
                        <input id="overlay-search" class="no-border overlay-search bg-transparent" placeholder="Search..." autocomplete="off" spellcheck="false">
                        <br>
                        <div class="inline-block">
                            <div class="checkbox right">
                                <input id="checkboxn" type="checkbox" value="1" checked="checked">
                                <label for="checkboxn"><i class="fa fa-search"></i>Search within page</label>
                            </div>
                        </div>
                        <div class="inline-block m-l-10">
                            <p class="fs-13">Press enter to search</p>
                        </div>
                        <!-- END Overlay Controls !-->
                    </div>
                    <!-- BEGIN Overlay Search Results, This part is for demo purpose, you can add anything you like !-->
                    <div class="container-fluid">
                        <span>
                            <strong>suggestions :</strong>
                        </span>
                        <span id="overlay-suggestions"></span>
                        <br>
                        <div class="search-results m-t-40">
                            <p class="bold">Pages Search Results</p>
                            <div class="row">
                                <div class="col-md-6">
                                    <!-- BEGIN Search Result Item !-->
                                    <div class="">
                                        <!-- BEGIN Search Result Item Thumbnail !-->
                                        <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                                            <div>
                                                <img width="50" height="50" src="assets/img/profiles/avatar.jpg" data-src="assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">
                                            </div>
                                        </div>
                                        <!-- END Search Result Item Thumbnail !-->
                                        <div class="p-l-10 inline p-t-5">
                                            <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> on pages</h5>
                                            <p class="hint-text">via john smith</p>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item !-->
                                    <!-- BEGIN Search Result Item !-->
                                    <div class="">
                                        <!-- BEGIN Search Result Item Thumbnail !-->
                                        <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                                            <div>T</div>
                                        </div>
                                        <!-- END Search Result Item Thumbnail !-->
                                        <div class="p-l-10 inline p-t-5">
                                            <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> related topics</h5>
                                            <p class="hint-text">via pages</p>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item !-->
                                    <!-- BEGIN Search Result Item !-->
                                    <div class="">
                                        <!-- BEGIN Search Result Item Thumbnail !-->
                                        <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                                            <div>
                                                <i class="fa fa-headphones large-text "></i>
                                            </div>
                                        </div>
                                        <!-- END Search Result Item Thumbnail !-->
                                        <div class="p-l-10 inline p-t-5">
                                            <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> music</h5>
                                            <p class="hint-text">via pagesmix</p>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item !-->
                                </div>
                                <div class="col-md-6">
                                    <!-- BEGIN Search Result Item !-->
                                    <div class="">
                                        <!-- BEGIN Search Result Item Thumbnail !-->
                                        <div class="thumbnail-wrapper d48 circular bg-info text-white inline m-t-10">
                                            <div>
                                                <i class="fa fa-facebook large-text "></i>
                                            </div>
                                        </div>
                                        <!-- END Search Result Item Thumbnail !-->
                                        <div class="p-l-10 inline p-t-5">
                                            <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> on facebook</h5>
                                            <p class="hint-text">via facebook</p>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item !-->
                                    <!-- BEGIN Search Result Item !-->
                                    <div class="">
                                        <!-- BEGIN Search Result Item Thumbnail !-->
                                        <div class="thumbnail-wrapper d48 circular bg-complete text-white inline m-t-10">
                                            <div>
                                                <i class="fa fa-twitter large-text "></i>
                                            </div>
                                        </div>
                                        <!-- END Search Result Item Thumbnail !-->
                                        <div class="p-l-10 inline p-t-5">
                                            <h5 class="m-b-5">Tweats on<span class="semi-bold result-name"> ice cream</span></h5>
                                            <p class="hint-text">via twitter</p>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item !-->
                                    <!-- BEGIN Search Result Item !-->
                                    <div class="">
                                        <!-- BEGIN Search Result Item Thumbnail !-->
                                        <div class="thumbnail-wrapper d48 circular text-white bg-danger inline m-t-10">
                                            <div>
                                                <i class="fa fa-google-plus large-text "></i>
                                            </div>
                                        </div>
                                        <!-- END Search Result Item Thumbnail !-->
                                        <div class="p-l-10 inline p-t-5">
                                            <h5 class="m-b-5">Circles on<span class="semi-bold result-name"> ice cream</span></h5>
                                            <p class="hint-text">via google plus</p>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item !-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Overlay Search Results !-->
                </div>
                <!-- END Overlay Content !-->
            </div>
            <!-- END OVERLAY -->
        </div>
    </form>

    <!-- BEGIN VENDOR JS -->

    <script src="assets/plugins/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
    <!--for hover and come from left :D-->
    <script src="assets/plugins/modernizr.custom.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="assets/plugins/boostrapv3/js/bootstrap.min.js" type="text/javascript"></script>

    <script src="assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>


    <!--
    <script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>

    <script src="assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-bez/jquery.bez.min.js"></script>
    <script src="assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-actual/jquery.actual.min.js"></script>

    
    <script type="text/javascript" src="assets/plugins/bootstrap-select2/select2.min.js"></script>
    <script type="text/javascript" src="assets/plugins/classie/classie.js"></script>
    <script src="assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/lib/d3.v3.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/nv.d3.min.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/utils.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/tooltip.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/interactiveLayer.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/models/axis.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/models/line.js" type="text/javascript"></script>
    <script src="assets/plugins/nvd3/src/models/lineWithFocusChart.js" type="text/javascript"></script>
    <script src="assets/plugins/mapplic/js/hammer.js"></script>
    <script src="assets/plugins/mapplic/js/jquery.mousewheel.js"></script>
    <script src="assets/plugins/mapplic/js/mapplic.js"></script>
    <script src="assets/plugins/rickshaw/rickshaw.min.js"></script>
    <script src="assets/plugins/jquery-metrojs/MetroJs.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="assets/plugins/skycons/skycons.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>

    -->
    <!-- END VENDOR JS -->
    <!-- BEGIN CORE TEMPLATE JS -->
    <script src="pages/js/pages.min.js"></script>
    <!-- END CORE TEMPLATE JS -->
    <!-- BEGIN PAGE LEVEL JS -->
    <script src="assets/js/dashboard.js" type="text/javascript"></script>
    <script src="assets/js/scripts.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS -->
    <script>
        $(function () {
            $('#form-login').validate()
        })
    </script>
</body>
</html>