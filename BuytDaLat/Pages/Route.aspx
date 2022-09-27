<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Route.aspx.cs" Inherits="BuytDaLat.Pages.Route" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form1" id="form1" runat="server">
        <h2 class="w-100 mt-4 text-center">Quản lý tuyến</h2>
        <asp:Panel CssClass="panel1" ID="Panel1" runat="server">
            <div class="">
                <div class="row mt-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtID" readonly runat="server" placeholder="ID" />
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" id="txtRouteNumber" runat="server" placeholder="Mã số tuyến" />
                    </div>
                </div>

                <div class="row mt-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtRouteName" runat="server" placeholder="Tên tuyến" />
                    </div>
                    <div class="col">
                        <asp:DropDownList CssClass="custom-select" ID="ddlResponsibleUnit" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtOperationType" runat="server" placeholder="Loại hình hoạt động" />

                    </div>
                    <div class="col">
                        <input type="text" class="form-control" id="txtOperationTime" runat="server" placeholder="Thời gian hoạt động" />
                    </div>
                </div>

                <div class="row mt-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtFare" runat="server" placeholder="Giá vé" />
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" id="txtBusesAmount" runat="server" placeholder="Số chuyến" />
                    </div>
                </div>

                <div class="row mt-4">
                    <div class="col">
                        <input type="text" class="form-control" id="txtBusesTime" runat="server" placeholder="Thời gian chuyến" />
                    </div>

                    <div class="col">
                        <input type="text" class="form-control" id="txtBusesSpace" runat="server" placeholder="Giãn cách chuyến" />
                    </div>
                </div>
                <div class="form-group mt-3">
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
                        <table class="table table-bordered">
                            <label class="form-control">Danh sách tuyến</label>
                            <thead>
                                <tr class="text-center text-nowrap">
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
                                <% 
                                    foreach (var item in ls)
                                    {
                                %>
                                <tr>
                                    <td style="width: 40px; text-align: center">
                                        <input name='cbID' type='checkbox' /></td>
                                    <td style="width: 50px">
                                        <a style="text-align: center" href="?idEdit=<%=item.BusRouteID %>" class="btn btn-primary">Edit</a>
                                    </td>
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

    </form>
</asp:Content>
