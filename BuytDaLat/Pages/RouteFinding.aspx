<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RouteFinding.aspx.cs" Inherits="BuytDaLat.Pages.RouteFinding" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <style>
        * {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
        }

        div {
            display: block;
        }

        Body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            color: #2f2f2f;
            line-height: 1.3;
        }

        .dnnFormItem div.input input[type="text"], .dnnFormItem div.input select {
            width: 350px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border: 1px gray solid;
            padding: 1rem;
        }

        .dnnFormItem input[type="text"].clearable {
            padding-right: 20px;
        }



        .dnnFormItem input[type="text"], .dnnFormItem input[type="password"], .dnnFormItem input[type="email"], .dnnFormItem input[type="tel"], .dnnFormItem select, .dnnFormItem textarea {
            width: 45%;
            max-width: 445px;
        }

        .dnnFormItem {
            text-align: center;
        }

            .dnnFormItem .cms-button-small {
                margin-right: 10px !important;
                margin-top: 0px !important;
            }

            .dnnFormItem div {
                vertical-align: top;
                display: inline-block;
            }




        .eds_containers_NewsTwo.eds_templateGroup_default {
            border: 1px solid #dadada;
            background-color: #F1F1F1;
        }

            .eds_containers_NewsTwo.eds_templateGroup_default > h2 {
                background-color: #dadada;
            }

                .eds_containers_NewsTwo.eds_templateGroup_default > h2 span.Head {
                    font-family: Arial, Helvetica, sans-serif;
                    font-size: 18px;
                    color: #121212;
                }

                    .eds_containers_NewsTwo.eds_templateGroup_default > h2 span.Head > span.highlight {
                        color: #34B67A;
                    }

        .dnnFormItem input[type="text"].clearable {
            padding-right: 20px;
        }



        .dnnFormItem input[type="text"] {
            width: 45%;
            max-width: 445px;
            height: 31.5px;
            margin-bottom: 10px;
        }

        .dnnFormItem .cms-button-small {
            width: 80px;
            line-height: 16px;
            text-align: center;
            vertical-align: middle;
            font-size: 13px !important;
            margin: 0px;
            margin-top: -3px;
            margin-left: 10px;
            padding: 8px;
        }



        .cms-button {
            padding: 5px;
            margin: 3px;
            display: inline-block;
            width: 31%;
            text-align: left;
            text-decoration: none;
            font-size: 12px;
            vertical-align: middle;
            color: #FFFFFF !important;
            border: 1px solid #ffffff;
            background: none repeat scroll 0 0 #34B67A;
        }

        span.highlight {
            color: #34B67A;
        }
        .portalName {
            color: #109D59;
            font-size: 18px;
            padding-left: 10px;
            display: inline-block;
            white-space: normal;
            font-weight: bold;
            text-transform: uppercase;
            text-align: center;
            vertical-align: middle;
            padding-top: 15px;
        }
        .login-language-social-container {
            position: absolute;
            top: 50px;
            right: 0px;
        }

        .language-selected {
            font-weight: 600;
        }

        .language {
            margin-top: 2px;
            margin-right: 4px;
        }
    </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="content-top-wraper">
                <div id="dnn_ContentTop">
                    <div class="DnnModule DnnModule-iBus_PathFinding DnnModule-575">
                        <a name="575"></a>
                        <div class="portalName text-center form-control h-100 border-0">
                            Sở Giao Thông Vận Tải Thành phố Đà Lạt
                    <br />
                            Trung tâm Quản lý giao thông công cộng Thành phố Đà Lạt
                        </div>

                        
                        <div class="login-language-social-container">
                            <div class="language">
                                <div class="language-object">
                                    <span class="language-selected">Tiếng Việt</span>
                                    <span class="language">|</span>
                                    <span class="language">English</span>
                                </div>
                            </div>
                            <div class="social-links">
                                <a href="https://www.facebook.com/tkdg2308" title="Facebook" target="facebook">
                                    <span>Facebook</span>
                                </a>
                            </div>
                        </div>

                        <div class="eds_containers_NewsTwo eds_templateGroup_default eds_template_Default">
                            <h2>
                                <span id="dnn_ctr575_dnnTITLE_titleLabel" class="Head">
                                    <span class="highlight">Đường đi</span>
                                    bằng xe buýt
                                </span>
                            </h2>


                            <div class="dnnFormItem">
                                <div id="btnSwap" class="cms-button cms-button-small swap" tabindex="5" title="Chuyển hướng">
                                    ĐỔI
                                </div>
                                <div class="input">
                                    <input type="text" class="clearable ui-autocomplete-input" id="txtDirectFrom" placeholder="<nhập điểm xuất phát hoặc click chọn trên bản đồ>" tabindex="0" srchid="" autocomplete="off">
                                    <br />
                                    <input type="text" class="clearable ui-autocomplete-input" id="txtDirectTo" placeholder="<nhập điểm đến hoặc click chọn trên bản đồ>" tabindex="1" srchid="" autocomplete="off">
                                    <br />
                                    <select id="cboRouteNumber" tabindex="2">
                                        <option value="1">Chỉ đi 1 tuyến</option>
                                        <option value="2" selected="selected">Hành trình tối đa 2 tuyến</option>
                                        <option value="3">Hành trình tối đa 3 tuyến</option>
                                    </select>
                                </div>
                                <div>
                                    <div id="btnSearch" class="cms-button cms-button-small search" tabindex="3" title="Tìm đường">
                                        TÌM
                                    </div>
                                </div>
                            </div>
                            <div id="dnn_ctr575_ContentPane" style="text-align: center;">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d45316.06118842752!2d106.7270417846314!3d10.839035693512201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zY8O0bmcgdHLGsOG7nW5nIGdhIGLhur9uIHRow6BuaA!5e0!3m2!1svi!2s!4v1662693522662!5m2!1svi!2s" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div style="border: 1px gainsboro solid; padding: 0.2rem">
                <div style="text-align: center; background-color: gainsboro; padding: 1rem">
                    <span>Bản quyền Trung tâm Quản lý Giao thông công cộng Thành phố Hồ Chí Minh </span>
                    <br />
                    <span>Phát triển bởi </span>
                    <span class="highlight">Công ty Hệ thống thông tin DLU</span>
                </div>
            </div>
        </form>
    </body>
    </html>
</asp:Content>
