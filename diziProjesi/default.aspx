<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="diziProjesi._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info">
                                <img src="<%# Eval("BLOGGORSEL")%>" alt="" height="200px" widht="300px"  />
                                <div class="post-info">
                                    <h4><a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK")%></a><%# Eval("BLOGTARIH") %></h4>
                                    <p><%# Eval("BLOGOZET") %></p>
                                    <a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"<span>Devamını oku...</span></a>
                                </div>
                            </div>


                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>Son Bloglar</h3>
                    
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <ul>
                                    <li><a href="BlogDetay.aspx?BLOGID=  <%# Eval("BLOGID")  %>"><%# Eval("BLOGBASLIK")%> </a></li
                                </ul>

                            </ItemTemplate>
                        </asp:Repeater>
                    <br />
                   
                </div>
                <div class="comments">
                    <h3>Son Yorumlar</h3>

                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                           <ul>
                             <li><%# Eval("KULLANICIAD") %> - <%# Eval("YORUMICERIK") %> </li>
                           </ul>
                         </ItemTemplate>
                    </asp:Repeater>
                    
                    <br />
                </div>
                <div class="clearfix"></div>
                <div class="archives">
                    <h3>Arşivler</h3>
                    <ul>
                        <li><a href="#">October 2013</a></li>
                        <li><a href="#">September 2013</a></li>
                        <li><a href="#">August 2013</a></li>
                        <li><a href="#">July 2013</a></li>
                    </ul>
                </div>

                <br />
                <div class="categories">
                    <h3>Kategoriler</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <li><a href="default.aspx?KATEGORIID=<%# Eval("KATEGORIID") %>"><%# Eval("KATEGORIAD") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
