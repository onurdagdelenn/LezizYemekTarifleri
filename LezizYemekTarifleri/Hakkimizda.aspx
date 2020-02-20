<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="LezizYemekTarifleri.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: large;
            width: 418px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style2">
        Biz Kimiz,</p>
    <p class="auto-style5">
        <asp:DataList ID="DataList2" runat="server" Width="419px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>


    <asp:Image ID="Image1" runat="server" Height="258px" ImageUrl="~/resimler/hakkimizde_bg.jpg" Width="424px" />
</asp:Content>
