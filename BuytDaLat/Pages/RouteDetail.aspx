<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RouteDetail.aspx.cs" Inherits="BuytDaLat.Pages.RouteDetail" MasterPageFile="~/Site.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form1" id="form1" runat="server">

        <div class="container bg-white">

            <div class="form-control text-center h-100 font-weight-bold text-success border-0">
                <label>
                    SỞ GIAO THÔNG VẬN TẢI THÀNH PHỐ ĐÀ LẠT
                    <br />
                    TRUNG TÂM QUẢN LÝ GIAO THÔNG CÔNG CỘNG THÀNH PHỐ ĐÀ LẠT</label>
            </div>

            <div class="container-detail bg-light" style="border: 1px solid #dadada">
                <h2 class="" style="font-size: 20px; background: #d8d8d8; padding: 0.5rem;">Thông tin 
                    <span class="text-success" style="font-weight: 400">Tuyến <%= br.BusRouteID %>: <%= br.RouteName %></span>
                </h2>

                <div class="RouteDetail bg-light">
                    <div class="RouteInfo" style="padding: 0.5rem; font-size: 12px;">
                        <table>
                            <tbody>
                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap">Mã số tuyến:</td>
                                    <td><%= br.RouteNumber %></td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap">Tên tuyến:</td>
                                    <td><%= br.RouteName %></td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap" colspan="3">Đường đi cập nhật từ bảng tuyến đường:</td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td class="col-sm-2"></td>
                                    <td>Đường đi cập nhật</td>
                                </tr>

                                <tr>
                                    <td style="font-weight: bold;">Đường đi cập nhật từ bảng tuyến đường:</td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td></td>
                                    <td colspan="2">Đường đi cập nhật</td>
                                </tr>


                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap">Đơn vị đảm nhận:</td>
                                    <td><%= ru.ReponsibleUnitName %> - <%= ru.PhoneNumber %></td>
                                </tr>
                                <td></td>
                                <tr style="display: table-row-group; vertical-align: middle; white-space: nowrap; vertical-align: top;">
                                  <td class="col-sm-2"></td>
                                    <td>
                                        <ul style="list-style: circle">
                                            <li>Loại hình hoạt động: <%= br.OperationType %></li>
                                            <li>Cự ly: Cập nhật từ bảng khác</li>
                                            <li>Loại xe: Cập nhật từ bảng loại xe</li>
                                            <li>Thời gian hoạt động: <%= br.OperationTime %></li>
                                        </ul>
                                    </td>

                                    <td>
                                        <ul style="list-style: circle">
                                            <li>Giá vé: <%= br.Fare %> VNĐ</li>
                                            <li>Số chuyển: <%= br.BusesAmount %></li>
                                            <li>Thời gian chuyến: <%= br.BusesSpace %></li>
                                            <li>Giãn cách chuyến: <%= br.BusesTime %></li>
                                        </ul>
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div style="border: 1px gainsboro solid; padding: 0.1rem; font-size:12px" >
            <div style="text-align: center; background-color: #d8d8d8; padding: 0.5rem">
                <span>Bản quyền © Trung tâm Quản lý Giao thông công cộng Thành phố Đà Lạt </span>
                <br />
                <span>Phát triển bởi </span>
                <span class="text-success">Công ty Hệ thống thông tin DLU</span>
            </div>
        </div>

    </form>
</asp:Content>
