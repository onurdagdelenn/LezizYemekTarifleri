<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="LezizYemekTarifleri.TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
           
        }

        .auto-style4 {
       
        font-weight: bold;
        height: 40px;
    }
        .auto-style6 {
            margin-left: 120px;
        }

        .auto-style7 {
            width: 200px;
            height: 397px;
        }

        .auto-style10 {
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Ad: </td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Malzemeler:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Yapılış:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Resim:</td>
            <td class="auto-style10">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Öneren:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mail Adresi:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#6699FF" BorderColor="#3366FF" BorderStyle="Solid" CssClass="auto-style6" ForeColor="White"  Text="Tarif Öner" Width="90px" OnClick="BtnTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
