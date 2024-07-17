<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="diziProjesi.AdminSayfalar.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>KULLANICI</th>
            <th>BLOG</th>
            <th>YORUM ICERIK</th>
            <th>SIL</th>
            <th>GUNCELLE</th>
        </tr>


        <asp:Repeater runat="server" ID="Repeater1">
            <ItemTemplate>

                <tr>
                    <td><%# Eval("YORUMID") %></td>
                    <td><%# Eval("KULLANICIAD") %></td>
                    <td><%# Eval("BLOGBASLIK") %></td>
                    <td><%# Eval("YORUMICERIK") %></td>


                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YorumSil.aspx?YORUMID=" + Eval("YORUMID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>

                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "YorumGuncelle.aspx?YORUMID=" + Eval("YORUMID") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>





                </tr>
            </ItemTemplate>
        </asp:Repeater>



    </table>
</asp:Content>
