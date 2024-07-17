<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Bloglar.aspx.cs" Inherits="diziProjesi.AdminSayfalar.Bloglar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BASLIK</th>
            <th>TARIH</th>
            <th>TUR</th>
            <th>KATEGORI</th>
            <th>SIL</th>
            <th>GUNCELLE</th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td> <%# Eval("BLOGID") %></td>
                    <td> <%# Eval("BLOGBASLIK") %></td>
                    <td> <%# Eval("BLOGTARIH") %></td>
                    <td> <%# Eval("BLOGTUR") %></td>
                    <td> <%# Eval("BLOGKATEGORI") %></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "BlogSil.aspx?BLOGID=" + Eval("BLOGID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    
                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Blogguncelle.aspx?BLOGID=" + Eval("BLOGID") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink> </td>





                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="YeniBlog.aspx" class="btn btn-primary">Yeni Blog</a>
</asp:Content>
