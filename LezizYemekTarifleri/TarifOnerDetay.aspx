<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="LezizYemekTarifleri.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 100%;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style12 {
        color: #FFFFFF;
    }
        .auto-style13 {
            width: 176px;
        }
        .auto-style14 {
            text-align: right;
            width: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Malzemeler:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Yapılış</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Resim:</td>
                <td class="auto-style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Öneren:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Öneren Mail:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" BackColor="#6699FF" BorderColor="#3366FF" BorderStyle="Solid" CssClass="auto-style12" Text="Yorum Gönder" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
