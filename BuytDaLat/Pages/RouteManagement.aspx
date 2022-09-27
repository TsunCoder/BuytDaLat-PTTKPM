<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RouteManagement.aspx.cs" Inherits="BuytDaLat.Pages.Route" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form1" id="form1" runat="server">
        <h2 class="w-100 mt-4 text-center">Quản lý tuyến</h2>
        <asp:Panel CssClass="panel1 " ID="Panel1" runat="server">
            <div class="form-group border rounded">
                <div class="row mt-4 px-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtID" readonly runat="server" placeholder="ID" />
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" id="txtRouteNumber" runat="server" placeholder="Mã số tuyến" />
                    </div>
                </div>

                <div class="row mt-4 px-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtRouteName" runat="server" placeholder="Tên tuyến" />
                    </div>
                    <div class="col">
                        <asp:DropDownList CssClass="custom-select" ID="ddlResponsibleUnit" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row mt-4 px-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtOperationType" runat="server" placeholder="Loại hình hoạt động" />

                    </div>
                    <div class="col">
                        <input type="text" class="form-control" id="txtOperationTime" runat="server" placeholder="Thời gian hoạt động" />
                    </div>
                </div>

                <div class="row mt-4 px-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtFare" runat="server" placeholder="Giá vé" />
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" id="txtBusesAmount" runat="server" placeholder="Số chuyến" />
                    </div>
                </div>

                <div class="row mt-4 px-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtBusesTime" runat="server" placeholder="Thời gian chuyến" />
                    </div>

                    <div class="col">
                        <input type="text" class="form-control" id="txtBusesSpace" runat="server" placeholder="Giãn cách chuyến" />
                    </div>
                </div>
                <div class="form-group mt-3 ml-4">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Thêm" />
                    <asp:Button ID="btLuu" runat="server" Text="Lưu" CssClass="btn btn-primary" OnClick="btLuu_Click" />
                    <asp:Button ID="btThoat" runat="server" Text="Thoát" CssClass="btn btn-primary" />
                </div>
            </div>
        </asp:Panel>

        <!-- Tables -->
        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Panel ID="pnTable" runat="server">
                    <div class="">
                        <table class="table table-bordered table-responsive">
                            <label class="form-control">
                                Danh sách tuyến</label>
                            <div class="mt-2 mb-2 row d-flex ">
                                <div class="col">
                                    <input id="txtKeyword" runat="server" class="form-control" placeholder="Tìm kiếm" type="text"> </input>
                                </div>
                                <div class="col w-150" style="width: 100px">
                                    <asp:DropDownList ID="drlPageNumber" runat="server" AutoPostBack="true" CssClass="custom-select" OnSelectedIndexChanged="drlPageNumber_SelectedIndexChanged">
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <asp:Button ID="btTim" runat="server" CssClass="btn btn-primary w-25" OnClick="btTim_Click" Text="Tìm" />
                                </div>
                                <div class="col d-flex justify-content-end">
                                    <asp:Button ID="btXoa" runat="server" CssClass="btn btn-primary" OnClick="btXoa_Click" OnClientClick="return confirm('Bạn có muốn xóa không?')" Text="Xóa" />
                                </div>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                            <thead class="table-secondary">
                                <tr class="text-center text-nowrap">
                                    <th>
                                        <input id="selectAll" type="checkbox"><label for="selectAll"></label></input></th>
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
                                <% 
                                    foreach (var item in ls)
                                    {
                                %>
                                <tr>
                                    <td style="width: 40px; text-align: center">
                                        <input name='cbID' type='checkbox' value='<%=item.BusRouteID %>' />
                                    </td>
                                    <td style="width: 50px"><a class="btn btn-primary" href="?idEdit=<%=item.BusRouteID %>" style="text-align: center">Edit</a> </td>
                                    <td><%=item.RouteNumber %></td>
                                    <td><%=item.RouteName %></td>
                                    <td><%=item.OperationType %></td>
                                    <td><%=item.OperationTime %></td>
                                    <td><%=item.Fare %></td>
                                    <td><%=item.BusesAmount %></td>
                                    <td><%=item.BusesTime %></td>
                                    <td><%=item.BusesSpace %></td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="card-footer text-right">
            <asp:Panel ID="pnPhanTrang" runat="server">
                <div class="form-row">
                    <div class="col-auto">
                        <asp:Button ID="btTruoc" runat="server" Text="Trước" class="btn btn-dark" OnClick="btPhanTrang_Click" />
                    </div>
                    <div class="col-auto">
                        <asp:HiddenField ID="hPageIndex" runat="server" />
                        <asp:HiddenField ID="hTotalRows" runat="server" />
                        <asp:HiddenField ID="hPageSize" runat="server" />
                        <asp:Panel ID="pnButton" runat="server"></asp:Panel>

                    </div>
                    <div class="col-auto">
                        <asp:Button ID="btSau" runat="server" Text="Sau" class="btn  btn-dark" OnClick="btPhanTrang_Click" />
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
    <script>
        $("#selectAll").click(function () {
            $("input[type=checkbox]").prop('checked', $(this).prop('checked'));
        })
    </script>
</asp:Content>
