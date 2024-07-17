<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="diziProjesi.AdminSayfalar.Hakkimizda1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">

        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>ACIKLAMA</th>
                
            </tr>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("ACIKLAMA") %></td>
                        
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "HakkimizdaSil.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>

                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "HakkimizdaGuncelle.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>





                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <a href="HakkimizdaEkle.aspx" class="btn btn-primary">Hakkımızda Ekle</a>



















    </form>
</asp:Content>
