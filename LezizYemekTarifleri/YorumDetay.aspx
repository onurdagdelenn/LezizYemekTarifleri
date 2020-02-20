<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="LezizYemekTarifleri.YorumDetay" %>
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
        <td class="auto-style5"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtAdSoyad" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Yorumunuz:</strong></td>
        <td>
            <asp:TextBox ID="TxtIcerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Yemek:</strong></td>
        <td>
            <asp:TextBox ID="TxtYemek" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnOnayla" runat="server" BackColor="#6699FF" CssClass="fb8" ForeColor="White" OnClick="BtnOnayla_Click" Text="Onayla" />
        </td>
    </tr>
</table>
</asp:Content>
