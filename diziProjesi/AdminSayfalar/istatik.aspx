﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="istatik.aspx.cs" Inherits="diziProjesi.AdminSayfalar.istatik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
            <td>Toplam Blog Sayısı:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>

            <td>Toplam Yorum Sayısı:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>

            <td>Film Sayısı:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>Dizi Sayısı:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>

            <td>Animayon Sayısı:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>

            <td>En fazla yorumlu blog :<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>


</asp:Content>
