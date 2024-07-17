<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Blogguncelle.aspx.cs" Inherits="diziProjesi.AdminSayfalar.Blogguncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">

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
        <asp:Label runat="server" Text="Blog Durumunu Seçiniz:"></asp:Label>

        <asp:RadioButtonList ID="RadioButtonList1" runat="server">

            <asp:ListItem Text="Aktif" Value="1" />
            <asp:ListItem Text="Pasif" Value="2" />

        </asp:RadioButtonList>
        <%-- <asp:CheckBoxList ID="CheckBoxList1" runat="server" >
            
            <asp:ListItem Text="Aktif" Value="1" />
            <asp:ListItem Text="Pasif" Value="2" />

        </asp:CheckBoxList>--%>




        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />

    </form>
</asp:Content>
