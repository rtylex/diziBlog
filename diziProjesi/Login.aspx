<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="diziProjesi.Login" %>


<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Report Login Form Responsive Widget Template :: W3layouts</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords"
        content="Report Login Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!-- //Meta tag Keywords -->
    <link href="//fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;500;700;900&display=swap" rel="stylesheet">
    <!--/Style-CSS -->
    <link rel="stylesheet" href="login/css/style.css" type="text/css" media="all" />
    <!--//Style-CSS -->

    <link rel="stylesheet" href="login/css/font-awesome.min.css" type="text/css" media="all">
</head>

<body>

    <!-- form section start -->
    <section class="w3l-hotair-form">
        <h1>DİZİ SİTESİ ADMİN PANEL GİRİŞİ</h1>


        <div class="container">
            <!-- /form -->
            <div class="workinghny-form-grid">
                <div class="main-hotair">
                    <div class="content-wthree">
                        <h2>GİRİŞ YAP</h2>
                        <form action="#" method="post" runat="server">
                            <asp:Label ID="lblHataMesaji" runat="server" Text="Label"  Visible="false" style="color:red"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                            <br />
                            <asp:Button ID="btn" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Style="background-color: dimgray; width: 100px; border: none; color: black;" OnClick="btn_Click" />


                        </form>


                    </div>
                    <div class="w3l_form align-self">
                        <div class="left_grid_info">
                            <img src="login/images/1.png" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
            </div>
            <!-- //form -->
        </div>
        <!-- copyright-->

        <!-- //copyright-->
    </section>
    <!-- //form section start -->
</body>

</html>
