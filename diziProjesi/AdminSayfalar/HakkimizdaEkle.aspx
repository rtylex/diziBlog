<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaEkle.aspx.cs" Inherits="diziProjesi.AdminSayfalar.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server">

        <asp:Label ID="Label1" runat="server" Text="Hakkımızda"></asp:Label>
        <asp:TextBox ID="txtHakkimizdaAciklama" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Button ID="btnHakkimdaKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnHakkimdaKaydet_Click" />







    </form>
</asp:Content>
