<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoutePage.aspx.cs" Inherits="BuytDaLat.Pages.RoutePage" MasterPageFile="~/Site.Master"%>
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

        .login-language-social-container {
            position: absolute;
            top: 50px;
            right: 0px;
        }

        .NewsTwoMain .header {
            padding-top: 15px;
        }

        .language-selected {
            font-weight: 600;
        }

        .language {
            margin-top: 2px;
            margin-right: 4px;
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

        .NewsTwoMain input[type="text"] {
            border: 1px solid #aaa;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
        }

        .NewsTwoMain a {
            color: #5e9700;
            text-decoration: none;
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

        .cms-button table .icon {
            display: inline-block;
            white-space: nowrap;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            height: 30px;
            min-width: 30px;
            line-height: 30px;
            margin: 0px;
            padding: 1px;
            vertical-align: middle;
            color: #34B67A;
            background-color: #ffffff;
            border: solid 1px #dadada;
            border-radius: 50%;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            margin-right: 5px;
        }

        td {
            display: table-cell;
            vertical-align: inherit;
        }

        table {
            border-collapse: separate;
            text-indent: initial;
            border-spacing: 2px;
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
    </style>
<body>
    <div class="">
        <form id="form1" runat="server">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <div class="NewsTwoBackgroundGradient">
                <div class="NewsTwoMain">
                    <div class="header">
                        <div class="logo">
                        </div>
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
                        <div></div>
                        <div class="clear"></div>
                    </div>
                    <div class="content-top-wraper">
                        <div id="dnn_ContentTop">
                            <div class="DnnModule DnnModule-iBus_TimeTable DnnModule-3591">
                                <a name="3591"></a>
                                <div class="eds_containers_NewsTwo eds_templateGroup_default eds_template_default">
                                    <h2>
                                        <span id="dnn_ctr3591_dnnTITLE_titleLabel" class="Head">Danh sách
                                    <span class="highlight">Tuyến</span>
                                        </span>
                                    </h2>
                                    <div id="dnn_ctr3591_ContentPane">
                                        <div class="dnnFormItem" style="text-align: center">
                                            <input type="text" class="clearable" id="txtRoute" placeholder="<Nhập mã hoặc tên tuyến>" style="padding: 1rem" />
                                            <a id="btnRouView" href="#" class="cms-button cms-button-small">Tìm</a>
                                        </div>
                                        <div id="divResult" style="text-align: center;">
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">01</div>
                                                            </td>
                                                            <td>Bến thành - Bến xe buýt chợ lớn</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">03</div>
                                                            </td>
                                                            <td>Bến thành - Thạnh Lộc</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">04</div>
                                                            </td>
                                                            <td>Bến thành - Cộng Hòa - Bến xe An Sương</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">05</div>
                                                            </td>
                                                            <td>Bến xe buýt chợ lớn - Bến xe Biên Hòa</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">06</div>
                                                            </td>
                                                            <td>Bến xe buýt chợ lớn - Đại học Nông Lâm</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">07</div>
                                                            </td>
                                                            <td>Bến xe buýt chợ lớn - Gò Vấp</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">08</div>
                                                            </td>
                                                            <td>Bến xe buýt Quận 8 - Đại học Quốc Gia</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">09</div>
                                                            </td>
                                                            <td>Bến xe buýt chợ lớn - Bình Chánh - Hưng Long</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">10</div>
                                                            </td>
                                                            <td>Đại học Quốc Gia - bến xe Miền Tây</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">100</div>
                                                            </td>
                                                            <td>Bến xe Củ Chi - Cầu Tân Thái</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">101</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Chợ Tân Nhựt</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">102</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Nguyễn Văn Linh - Bến xe Miền Tây</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">103</div>
                                                            </td>
                                                            <td>Bến xe buýt chợ lớn - Bến xe Ngã 4 Ga</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">104</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Đại học Nông Lâm</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">107</div>
                                                            </td>
                                                            <td>Bến xe Củ Chi - Bố Heo</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">109</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Sân bay Tân Sơn Nhất</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">110</div>
                                                            </td>
                                                            <td>Hiệp Phước - Phước Lộc</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">122</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Tân Quy</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">123</div>
                                                            </td>
                                                            <td>Phú Mỹ Hưng (Khu H) - Quận 1</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">124</div>
                                                            </td>
                                                            <td>Phú Mỹ Hưng (Khu S) - Quận 1</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">126</div>
                                                            </td>
                                                            <td>Bến xe Củ Chi - Bình Mỹ</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">127</div>
                                                            </td>
                                                            <td>An Thới Đông - Ngã ba Bà Xán</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">128</div>
                                                            </td>
                                                            <td>Tân Điền - An Nghĩa</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">13</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Bến xe Củ Chi</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">139</div>
                                                            </td>
                                                            <td>Bến xe miền Tây - Khu Tái Định Cư Phú Mỹ</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">14</div>
                                                            </td>
                                                            <td>Bến xe Miền Đông - 3/2 - Bến xe Miền Tây</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">140</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Phạm Thế Hiển - Khu Dân Cư Phú Lợi</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">141</div>
                                                            </td>
                                                            <td>Khu du lịch BCR - Long Trường - Khu chế xuất Linh Trung II</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">145</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Chợ Hiệp Thành</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">146</div>
                                                            </td>
                                                            <td>Bến xe Miền Đông - Chợ hiệp Thạnh</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">148</div>
                                                            </td>
                                                            <td>Bến xe Miền Tây - Gò Vấp</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">15</div>
                                                            </td>
                                                            <td>Chợ Phú Định - Đầm Sen</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">150</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Ngã 3 Tân Vạn</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">151</div>
                                                            </td>
                                                            <td>Bến xe Miền Tây - Bến xe An Sương</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">152</div>
                                                            </td>
                                                            <td>Khu dân cư Trung Sơn - Bến Thành - Sân bay Tân Sơn Nhất</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">16</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Bến xe buýt Tân Phú</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">18</div>
                                                            </td>
                                                            <td>Bến Thành - Chợ Hiệp Thành</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">19</div>
                                                            </td>
                                                            <td>Bến Thành - Khu Chế Xuất Linh Trung - Đại Học Quốc Gia</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">20</div>
                                                            </td>
                                                            <td>Bến Thành - Nhà Bè</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">22</div>
                                                            </td>
                                                            <td>Bến xe buýt Quận 8 - Khu công nghiệp Lê Minh Xuân</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">23</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Ngã 3 Giồng - Cầu Lớn</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">24</div>
                                                            </td>
                                                            <td>Bến Xe Miền Đông - Hóc Môn</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">25</div>
                                                            </td>
                                                            <td>Bến xe buýt Quận 8 - Khu dân cư Vĩnh Lộc A</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">27</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Âu Cơ - Bến xe An Sương</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">28</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Chợ Xuân Thới Thượng</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">29</div>
                                                            </td>
                                                            <td>Phà Cát Lái - Chợ nông sản Thủ Đức</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">30</div>
                                                            </td>
                                                            <td>Chợ Tân Hương - Đại học Quốc Tế</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">31</div>
                                                            </td>
                                                            <td>Đại học Tôn Đức Thắng - Bến Thành - Đại học Văn Lang</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">32</div>
                                                            </td>
                                                            <td>Bến xe Miền Tây - Bến xe Ngã Tư Ga</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">33</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Suối Tiên - Đại học Quốc Gia</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">34</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Bến xe buýt Quận 8</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">36</div>
                                                            </td>
                                                            <td>Bến Thành - Thới An</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">38</div>
                                                            </td>
                                                            <td>Khu dân cư Tân Quy - Bến Thành - Đầm Sen</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">39</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Võ Văn Kiệt - Bến xe Miền Tây</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">41</div>
                                                            </td>
                                                            <td>Bến xe Miền Tây - Ngã tư Bốn xã - Bến xe An Sương</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">43</div>
                                                            </td>
                                                            <td>Bến xe Miền Đông - Phà Cát Lái</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">44</div>
                                                            </td>
                                                            <td>Cảng Quận 4 - Bình Quới</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">45</div>
                                                            </td>
                                                            <td>Bến xe buýt Quận 8 - Bến Thành - Bến xe Miền Đông</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">46</div>
                                                            </td>
                                                            <td>Công viên Tôn Thất Thuyết - Bến Mễ Cốc</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">47</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Quốc lộ 50 - Hưng Long</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">48</div>
                                                            </td>
                                                            <td>Bến xe buýt Tân Phú - Chợ Hiệp Thành</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">50</div>
                                                            </td>
                                                            <td>Đại học Bách khoa - Đại học Quốc Gia</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">52</div>
                                                            </td>
                                                            <td>Bến Thành - Đại học Quốc Tế</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">53</div>
                                                            </td>
                                                            <td>Lê Hồng Phong - Đại học Quốc Gia</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">55</div>
                                                            </td>
                                                            <td>Công viên phần mềm Quang Trung - Bến xe Miền Đông mới</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">56</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Đại học Giao Thông Vận Tải</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">57</div>
                                                            </td>
                                                            <td>Chợ Phước Bình - Trường Trung học Phổ thông Hiệp Bình</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">58</div>
                                                            </td>
                                                            <td>Bến xe Ngã tư Ga - Khu công nghiệp Đông Nam</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">59</div>
                                                            </td>
                                                            <td>Bến xe buýt Quận 8 - Bến xe Ngã 4 Ga</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">60-1</div>
                                                            </td>
                                                            <td>Bến xe Miền Tây - Bến xe Biên Hòa</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">60-2</div>
                                                            </td>
                                                            <td>Đại học Nông Lâm - Bến xe Phú Túc</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">60-3</div>
                                                            </td>
                                                            <td>Bến xe Miền Đông - Khu Công nghiệp Nhơn Trạch</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">60-4</div>
                                                            </td>
                                                            <td>Bến xe Miền Đông - Khu công nghiệp Sông Mây</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">61</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Khu Công nghiệp Lê Minh Xuân</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">61-1</div>
                                                            </td>
                                                            <td>Thủ Đức - Dĩ An</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">61-3</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Bến xe Thủ Dầu Một</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">61-4</div>
                                                            </td>
                                                            <td>Bến Dược - Dầu Tiếng</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">61-7</div>
                                                            </td>
                                                            <td>Bến đò Bình Mỹ - Bến xe Bình Dương</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">61-8</div>
                                                            </td>
                                                            <td>Bến xe Miền Tây - Khu Du Lịch Đại Nam</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62</div>
                                                            </td>
                                                            <td>Bến xe buýt Quận 8 - Thới An</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-1</div>
                                                            </td>
                                                            <td>Bến xe Chợ Lớn - Bến xe Tân Trụ</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-10</div>
                                                            </td>
                                                            <td>Bến xe Chợ Lớn - Thanh Vĩnh Đông</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-11</div>
                                                            </td>
                                                            <td>Bến xe Quận 8 - Bến xe Tân Tập</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-2</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Ngã 3 Tân Lân</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-3</div>
                                                            </td>
                                                            <td>Bến Củ Chi - Bến xe Hậu Nghĩa</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-4</div>
                                                            </td>
                                                            <td>Thị trấn Tân Túc - Chợ Bến Lức</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-5</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Bến xe Hậu Nghĩa</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-6</div>
                                                            </td>
                                                            <td>BX Chợ Lớn - BX Hậu Nghĩa</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-7</div>
                                                            </td>
                                                            <td>Bến xe Chợ Lớn - Bến xe Đức Huệ</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-8</div>
                                                            </td>
                                                            <td>Bến xe Chợ Lớn - Bến xe Tân An</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">62-9</div>
                                                            </td>
                                                            <td>Bến xe buýt Quận 8 - Thị xã Gò Công</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">63-1</div>
                                                            </td>
                                                            <td>Bến xe buýt Tân Phú - Bến xe Tiền Giang</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">64</div>
                                                            </td>
                                                            <td>Bến xe Miền Đông - Đầm Sen</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">65</div>
                                                            </td>
                                                            <td>Bến Thành - Cách Mạng Tháng 8 - Bến xe An Sương</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">68</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Đại học Tài Chính - Marketing</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">69</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Khu dân cư Vĩnh Lộc</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">70</div>
                                                            </td>
                                                            <td>Tân Quy - Bến Súc</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">70-1</div>
                                                            </td>
                                                            <td>Bến xe Củ Chi - Bến xe Tây Ninh</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">70-2</div>
                                                            </td>
                                                            <td>BX Củ Chi - Hòa Thành</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">70-3</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Mộc Bài</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">70-5</div>
                                                            </td>
                                                            <td>Bố Heo - Lộc Hưng</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">71</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Phật Cô Đơn</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">72</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Hiệp Phước</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">72-1</div>
                                                            </td>
                                                            <td>Sân bay Tân Sơn Nhất - Đường Cao tốc - Bến xe Vũng Tàu</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">73</div>
                                                            </td>
                                                            <td>Chợ Bình Chánh - Khu Công nghiệp Lê Minh Xuân</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">74</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Bến xe Củ Chi</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">75</div>
                                                            </td>
                                                            <td>Bến xe buýt Sài Gòn - Cần Giờ</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">76</div>
                                                            </td>
                                                            <td>Long Phước - Suối Tiên - Bến xe Miền Đông mới</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">77</div>
                                                            </td>
                                                            <td>Đồng Hòa - Cần Thạnh</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">78</div>
                                                            </td>
                                                            <td>Bến xe buýt Thới An - Ngã ba Giồng - Cầu Lớn</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">79</div>
                                                            </td>
                                                            <td>Bến xe Củ Chi - Đền Bến Dược</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">81</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Lê Minh Xuân</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">84</div>
                                                            </td>
                                                            <td>Bến xe buýt Chợ Lớn - Tân Túc</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">85</div>
                                                            </td>
                                                            <td>Bến xe An Sương - Khu Công nghiệp Nhị Xuân</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">86</div>
                                                            </td>
                                                            <td>Bến Thành - Đại học Tôn Đức Thắng - Cầu Long Kiểng</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">87</div>
                                                            </td>
                                                            <td>Bến xe Củ Chi - An Nhơn Tây</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">88</div>
                                                            </td>
                                                            <td>Bến Thành - Chợ Long Phước</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">89</div>
                                                            </td>
                                                            <td>Đại học Nông lâm - Bến Tàu Hiệp Bình Chánh</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">90</div>
                                                            </td>
                                                            <td>Phà Bình Khánh - Cần Thạnh</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">91</div>
                                                            </td>
                                                            <td>Bến xe Miền Tây - Chợ nông sản Thủ Đức</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">93</div>
                                                            </td>
                                                            <td>Bến Thành - Bến xe Miền Đông mới</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">94</div>
                                                            </td>
                                                            <td>Bến xe Chợ Lớn - Bến xe Củ Chi</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">99</div>
                                                            </td>
                                                            <td>Chợ Thạnh Mỹ Lợi - Đại học Quốc Gia</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">D2</div>
                                                            </td>
                                                            <td>Sky Garden - Cresent Mall</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">D3</div>
                                                            </td>
                                                            <td>Riverside Resident - Cresent Mall</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">D4</div>
                                                            </td>
                                                            <td>Vinhomes Grand Park - Bến xe buýt Sài Gòn</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">DL01</div>
                                                            </td>
                                                            <td>Tuyến xe du lịch vòng khu vực trung tâm thành phố</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">DL02</div>
                                                            </td>
                                                            <td>City Tour Sài Gòn - Gia Định</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                            <a href="#" class="cms-button">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="icon">SWB1</div>
                                                            </td>
                                                            <td>Bạch Đằng - Linh Đông</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </a>
                                        </div>
                                    </div>
                                </div>
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
    </div>
</body>
</html>
</asp:Content>