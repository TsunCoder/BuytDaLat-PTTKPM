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
                    <span class="text-success" style="font-weight: 400">Tuyến 01: Bến Thành - Bến Xe buýt Chợ Lớn</span>
                </h2>

                <div class="RouteDetail bg-light">
                    <div class="RouteInfo" style="padding: 0.5rem; font-size: 12px;">
                        <table>
                            <tbody>
                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap">Mã số tuyến:</td>
                                    <td>1</td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap">Tên tuyến:</td>
                                    <td>Bến Thành - Bến Xe buýt Chợ lớn</td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap" colspan="3">Đi đến Bến Xe buýt Chợ Lớn:</td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td class="col-sm-2"></td>
                                    <td>Công trường Mê Linh-Thi Sách-Công trường Mê Linh-Tôn Đức Thắng-Hàm Nghi - Phó Đức Chính - Nguyễn Thái Bình - Ký Con - Trần Hưng Đạo-Nguyễn Tri Phương-Trần Phú-Trần Hưng Đạo-Châu Văn Liêm-Hải Thượng Lãn Ông-Trang Tử-Bến xe buýt Chợ Lớn A</td>
                                </tr>

                                <tr>
                                    <td style="font-weight: bold;">Đi đến Bến Thành:</td>
                                </tr>

                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td></td>
                                    <td colspan="2">Bến xe buýt Chợ Lớn A-Lê Quang Sung-Nguyễn Hữu Thận-Tháp Mười-Hải Thượng Lãn Ông-Châu Văn Liêm-Nguyễn Trãi-Nguyễn Tri Phương-Trần Phú-Trần Hưng Đạo -Hàm Nghi-Hồ Tùng Mậu-đường nhánh S2-Tôn Đức Thắng-Hai Bà Trưng-Đông Du-Thi Sách-Công trường Mê Linh</td>
                                </tr>


                                <tr style="display: table-row-group; vertical-align: middle;">
                                    <td style="font-weight: bold; white-space: nowrap">Đơn vị đảm nhận:</td>
                                    <td>Cty TNHH Du Lịch, Dịch vụ Xây dựng Bảo Yến, ĐT: 028.3776.3777</td>
                                </tr>
                                <td></td>
                                <tr style="display: table-row-group; vertical-align: middle; white-space: nowrap; vertical-align: top;">
                                  <td class="col-sm-2"></td>
                                    <td>
                                        <ul style="list-style: circle">
                                            <li>Loại hình hoạt động: Phổ thông - Có trợ giá</li>
                                            <li>Cự ly: 8.90 km</li>
                                            <li>Loại xe: 15 chỗ</li>
                                            <li>Thời gian hoạt động: 05:00 - 20:00</li>
                                        </ul>
                                    </td>

                                    <td>
                                        <ul style="list-style: circle">
                                            <li>Giá vé:<br />
                                                - Vé lượt trợ giá: 5,000 VNĐ<br />
                                                - Vé lượt trợ giá HSSV: 3,000 VNĐ<br />
                                                - Vé tập: 112,500 VNĐ</li>
                                            <li>Số chuyển: 120 chuyến/ngày</li>
                                            <li>Thời gian chuyến: 35 phút</li>
                                            <li>Giãn cách chuyến: 14 - 18 phút</li>
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
