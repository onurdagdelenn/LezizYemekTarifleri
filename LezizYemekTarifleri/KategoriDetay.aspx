<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="LezizYemekTarifleri.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: x-large;
        color: #FF9966;
    }
    .auto-style7 {
        color: #FF9966;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="434px">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td><strong><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler: </strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzemeleri") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>YemekTarifi: </strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi: </strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style7"></asp:Label>
                        &nbsp;-<strong> <em>Puan</em></strong> <strong><em>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style7"></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: 1px; border-bottom-color: #FFCC99">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
