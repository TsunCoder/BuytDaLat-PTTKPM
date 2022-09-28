<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResponsibleUnitManagement.aspx.cs" Inherits="BuytDaLat.Pages.ResponsibleUnitManagement" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form1" id="form1" runat="server">
        <h2 class="w-100 mt-4 text-center">Đơn vị đảm nhận</h2>
        <asp:Panel CssClass="panel1" ID="Panel1" runat="server">
            <div class="row">
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
                            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
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
                                        <caption>
                                            <label class="form-control text-center font-weight-bolder">
                                            Danh sách</label>
                                            <thead>
                                                <tr class="text-center text-nowrap">
                                                    <th>
                                                        <input id="selectAll" type="checkbox"><label for="selectAll"></label></input></th>
                                                    <th>Edit</th>
                                                    <th>ID</th>
                                                    <th>Tên đơn vị đảm nhận</th>
                                                    <th>Số điện thoại</th>
                                                    <th>Xóa</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% 
                                                foreach (var item in ls)
                                                {
                                            %>
                                                <tr>
                                                    <td style="width: 40px; text-align: center">
                                                        <input name='cbID' type='checkbox' />
                                                    </td>
                                                    <td style="width: 50px"><a class="btn btn-primary" href="?idedit=<%=item.ResponsibleUnitID %>" style="text-align: center">Edit</a> </td>
                                                    <td><%=item.ResponsibleUnitID %></td>
                                                    <td><%=item.ReponsibleUnitName %></td>
                                                    <td><%=item.PhoneNumber %></td>
                                                    <td><asp:Button CssClass="btn btn-primary" ID="Buttonxoa" runat="server" Text="Xoa" OnClick="Buttonxoa_Click1"/></td>
                                                </tr>
                                                <% } %>
                                            </tbody>
                                        </caption>
                                    </table>
                                </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

        </asp:Panel>
    </form>
</asp:Content>
