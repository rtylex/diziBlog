<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="diziProjesi.AdminSayfalar.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">

    <asp:Label ID="Label1" runat="server" Text="Blog Başlık"></asp:Label>
    <asp:TextBox ID="txtBlokBaslik" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

    <br />
    <asp:Label ID="Label2" runat="server" Text="Kullanıcı AD"></asp:Label>
    <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="form-control"></asp:TextBox>

    <br />
    <asp:Label ID="Label3" runat="server" Text="Yorum Icerik"></asp:Label>
    <asp:TextBox ID="txtYorumIcerik" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
   


                                                                           

        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />
    
</form>
</asp:Content>
