<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Route.aspx.cs" Inherits="BuytDaLat.Pages.Route" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tuyến</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <form class="form1" id="form1" runat="server">
        <h2 class="w-100 mt-4 text-center">Quản lý tuyến</h2>
        <asp:Panel CssClass="panel1 mw-100 w-75 m-auto" ID="Panel1" runat="server">
            <div class="form-control mt-4">
                <div class="row mt-4">
                    <div class="col">
                        <input type="text" class="form-control w-2" id="txtID" readonly runat="server" placeholder="ID" />
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" id="txtRouteNumber" runat="server" placeholder="Mã số tuyến" />
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control mt-4" id="txtRouteName" runat="server" placeholder="Tên tuyến" />
                    </div>
                    <div class="col">
                        <asp:DropDownList CssClass="custom-select mt-4" ID="ddlResponsibleUnit" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control mt-4" id="txtOperationType" runat="server" placeholder="Loại hình hoạt động" />

                    </div>
                    <div class="col">
                        <input type="text" class="form-control mt-4" id="txtOperationTime" runat="server" placeholder="Thời gian hoạt động" />
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control mt-4" id="txtFare" runat="server" placeholder="Giá vé" />
                    </div>
                    <div class="col">
                        <input type="text" class="form-control mt-4" id="txtBusesAmount" runat="server" placeholder="Số chuyến" />
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control mt-4" id="txtBusesTime" runat="server" placeholder="Thời gian chuyến" />
                    </div>

                    <div class="col">
                        <input type="text" class="form-control mt-4 mb-4" id="txtBusesSpace" runat="server" placeholder="Giãn cách chuyến" />
                    </div>
                </div>
                <div class="form-group mb-2">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Thêm" />
                    <asp:Button ID="btLuu" runat="server" Text="Lưu" CssClass="btn btn-primary" />
                    <asp:Button ID="btThoat" runat="server" Text="Thoát" CssClass="btn btn-primary" />
                </div>
            </div>
        </asp:Panel>

        <asp:Panel CssClass="mw-100 w-75 mx-auto my-4 form-control" ID="Panel2" runat="server">
            <!-- Tables -->
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Panel CssClass="" ID="pnTable" runat="server">
                        <table class="table table-bordered text-center mt-2">
                            <label>Danh sách tuyến</label>
                            <thead>
                                <tr class="">
                                    <th>
                                        <input id="selectAll" type="checkbox"><label for='selectAll'></label></th>
                                    <th>Edit</th>
                                    <th>Mã tuyến</th>
                                    <th>Tên tuyến</th>
                                    <th>Loại hình HĐ</th>
                                    <th>Thời gian HĐ</th>
                                    <th>Giá vé</th>
                                    <th>Số chuyến</th>
                                    <th>Thời gian chuyến</th>
                                    <th>Giãn cách chuyến</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width: 40px; text-align: center">
                                        <input name='cbID' type='checkbox' /></td>
                                    <td style="width: 50px">
                                        <a style="text-align: center" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>Name</td>
                                    <td>Name</td>
                                    <td>Name</td>
                                    <td>Name</td>
                                    <td>Name</td>
                                    <td>Name</td>
                                    <td>Name</td>
                                    <td>Name</td>
                                </tr>
                            </tbody>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>

        </asp:Panel>

    </form>
</body>
</html>
