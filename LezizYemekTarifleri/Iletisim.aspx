<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="LezizYemekTarifleri.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        margin-left: 40px;
    }
    .auto-style7 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style5">
    <tr>
        <td colspan="2">İletişime Geçmek İçin</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Konu:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mesajınız:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="Button1" runat="server" Text="Button" Width="80px" CssClass="fb8" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
