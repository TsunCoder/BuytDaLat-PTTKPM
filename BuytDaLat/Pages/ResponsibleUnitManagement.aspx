<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResponsibleUnitManagement.aspx.cs" Inherits="BuytDaLat.Pages.ResponsibleUnitManagement" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form1" id="form1" runat="server">
        <h2 class="w-100 mt-4 text-center">Đơn vị đảm nhận</h2>
        <asp:Panel CssClass="panel1" ID="Panel1" runat="server">
            <div class="">
                <div class="col">
                    <div class="row mt-4">
                        <div class="col">
                            <input type="text" class="form-control" id="txtID" readonly runat="server" placeholder="ID" />
                        </div>
                    </div>

                    <div class="row mt-4">
                        <div class="col">
                            <input type="text" class="form-control" id="txtResbonsilbeName" runat="server" placeholder="Tên đơn vị đảm nhận" />
                        </div>
                    </div>

                    <div class="row mt-4">
                        <div class="col">
                            <input type="text" class="form-control" id="txtPhoneNumber" runat="server" placeholder="Số điện thoại" />
                        </div>
                    </div>
                    <div class="row mt-2 ml-0">
                        <div class="form-group mt-2">
                            <asp:Button ID="btLuu" runat="server" Text="Lưu" CssClass="btn btn-primary" OnClick="btLuu_Click1" />
                            <asp:Button ID="btThoat" runat="server" Text="Thoát" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>

                <div class="col mt-4">
                    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Panel ID="pnTable" runat="server">
                                <div class="">
                                    <table class="table table-bordered">
                                        <label class="form-control text-center font-weight-bolder">
                                            Danh sách</label>
                                        <div class="d-flex mb-2">
                                            <input placeholder="Tim kiem" runat="server" id="txtSearch"/>
                                            <asp:DropDownList CssClass="custom-select col-md-1" AutoPostBack="true" ID="drlPageNumber" runat="server" OnSelectedIndexChanged="dlPageNumber_SelectedIndexChanged">
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="btnXoa" runat="server" Text="Xóa" CssClass="btn btn-primary ml-2" OnClick="btnXoa_Click" />
                                        </div>
                                        <thead>
                                            <tr class="text-center text-nowrap">
                                                <th>
                                                    <input id="selectAll" type="checkbox"><label for="selectAll"></label></input></th>
                                                <th>Edit</th>
                                                <th>ID</th>
                                                <th>Tên đơn vị đảm nhận</th>
                                                <th>Số điện thoại</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% 
                                                foreach (var item in ls)
                                                {
                                            %>
                                            <tr>
                                                <td style="width: 40px; text-align: center">
                                                    <input name='cbID' type='checkbox' value='<%= item.ResponsibleUnitID %>' />
                                                </td>
                                                <td style="width: 50px"><a class="btn btn-primary" href="?idedit=<%=item.ResponsibleUnitID %>" style="text-align: center">Edit</a> </td>
                                                <td><%=item.ResponsibleUnitID %></td>
                                                <td><%=item.ReponsibleUnitName %></td>
                                                <td><%=item.PhoneNumber %></td>
                                            </tr>
                                            <% } %>
                                        </tbody>

                                    </table>
                                </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="card-footer text-right">
                        <asp:Panel ID="pnPhanTrang" runat="server">
                            <div class="form-row d-flex justify-content-center">
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
                </div>
            </div>

        </asp:Panel>
    </form>
</asp:Content>
