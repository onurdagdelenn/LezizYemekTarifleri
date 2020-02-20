<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="LezizYemekTarifleri.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style4">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Mesaj Gönderen:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Konu:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mesaj İçerik:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>
