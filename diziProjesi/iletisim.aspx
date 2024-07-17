<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="diziProjesi.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!----webfonts---->
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
    <!----//webfonts---->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!--end slider -->
    <!--script-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <!--/script-->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
            });
        });
    </script>
    <!---->


    
   
    <!--/header-->
    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>İLETİŞİM</h2>
                <p>BLOG İLETİSİM SAYFASI</p>
            </div>
            <div class="contact-details">
                <form runat="server">
                    <asp:TextBox ID="TextBoxAdSoyad" runat="server" placeholder="Ad Soyad" ></asp:TextBox>
                    <asp:TextBox ID="TextBoxMail" runat="server" placeholder="Mail" ></asp:TextBox>
                    <asp:TextBox ID="TextBoxPhone" runat="server" placeholder="Telefon" ></asp:TextBox>
                    <asp:TextBox ID="TextBoxKonu" runat="server" placeholder="Konu" style="margin:auto"></asp:TextBox>
                    <asp:TextBox ID="TextBoxMesaj" runat="server" placeholder="Mesajınız:"  TextMode="MultiLine" Height="50"></asp:TextBox>


                    <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />

                </form>
            </div>
            <div class="contact-details">
                <div class="col-md-6 contact-map">
                    <h4>Biz Buradayız</h4>
                   <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=halkkent%2095040%20sokak%20&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org"></a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href="https://www.embedgooglemap.net"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>
                </div>
                <div class="col-md-6 company_address">
                    <h4>ADRESİMİZ</h4>
                    <p>500 Lorem Ipsum Dolor Sit,</p>
                    <p>22-56-2-9 Sit Amet, Lorem,</p>
                    <p>USA</p>
                    <p>Phone:(00) 222 666 444</p>
                    <p>Fax: (000) 123 456 78 0</p>
                    <p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
                    <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                </div>
                <div class="clearfix"></div>
            </div>


        </div>
    </div>
    
  
    



</asp:Content>
