<%--<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="diziProjesi.Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!DOCTYPE HTML>
    <html>
    <head>
        <title> <p> Hakkımızda</p> </title>

    </head>

    <body>
        <div class="container">
            <div class="about-section">
                <div class="about-grid">
                    <h3>HAKKIMIZDA</h3>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>

                            <p>
                                Lorem 
                            </p>


                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="diziProjesi.Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="about-section">
            <div class="about-grid">
                <h3>HAKKIMIZDA</h3>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <p><%# Eval("ACIKLAMA") %></p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
