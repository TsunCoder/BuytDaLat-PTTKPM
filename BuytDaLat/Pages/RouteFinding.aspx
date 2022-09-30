<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RouteFinding.aspx.cs" Inherits="BuytDaLat.Pages.RouteFinding" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../CSS/RouteFinding.css" rel="stylesheet" type="text/css" />
    <div class="main-container bg-light shadow-lg">
        <form id="form1" runat="server">
            <div class="header">
                <div class="portalName text-center form-control h-100 border-0 bg-light">
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
            </div>
            <div class="container">
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
                            <select class="py-2" id="cboRouteNumber" tabindex="2">
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
                    <div id="dnn_ctr575_ContentPane" style="text-align: center; margin-bottom:20px; margin-top:20px;">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d45316.06118842752!2d106.7270417846314!3d10.839035693512201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zY8O0bmcgdHLGsOG7nW5nIGdhIGLhur9uIHRow6BuaA!5e0!3m2!1svi!2s!4v1662693522662!5m2!1svi!2s" style="border: 0; width:100%; height:500px; padding: 0 20px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
            <div style="border: 1px gainsboro solid; padding: 0.2rem; margin-top:20px">
                <div style="text-align: center; background-color: gainsboro; padding: 1rem">
                    <span>Bản quyền Trung tâm Quản lý Giao thông công cộng Thành phố Đà Lạt </span>
                    <br />
                    <span>Phát triển bởi </span>
                    <span class="highlight">Công ty Hệ thống thông tin DLU</span>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
