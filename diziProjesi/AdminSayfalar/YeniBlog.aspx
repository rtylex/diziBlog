<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YeniBlog.aspx.cs" Inherits="diziProjesi.AdminSayfalar.YeniBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">

        <asp:Panel ID="Panel1" runat="server" Style="color: red">Lütfen tüm alanları doldurunuz:</asp:Panel>

        <asp:Label ID="Label1" runat="server" Text="Blog Başlık"></asp:Label>
        <asp:TextBox ID="txtBlokBaslik" runat="server" CssClass="form-control"></asp:TextBox>

        <br />
        <asp:Label ID="Label2" runat="server" Text="Blog Tarih"></asp:Label>
        <asp:TextBox ID="txtBlogTarih" runat="server" CssClass="form-control"></asp:TextBox>

        <br />
        <asp:Label ID="Label3" runat="server" Text="Blog Gorsel"></asp:Label>
        <asp:TextBox ID="txtBlogGorsel" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Blog Tur"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="TURAD" DataValueField="TURID"></asp:DropDownList>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Blog Kategori"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataTextField="KATEGORIAD" DataValueField="KATEGORIID"></asp:DropDownList>
        <br />

        <asp:Label ID="Label7" runat="server" Text="Blog Özet"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>

        <asp:Label ID="Label6" runat="server" Text="Blog İçerik"></asp:Label>
        <asp:TextBox ID="txtBlogIcerik" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="btnBlogKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnBlogKaydet_Click" />

    </form>
</asp:Content>
