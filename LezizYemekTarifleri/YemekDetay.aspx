<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="LezizYemekTarifleri.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
            color: #FF6600;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            background-color: #FFCC99;
        }
        .auto-style11 {
            text-align: right;
        }
    .auto-style12 {
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #993333">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </strong>
    <div class="auto-style10">Yorum Ekle</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Mail Adresi:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Düşünceleriniz:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="Yorum Gönder" BackColor="#6699FF" BorderColor="#3366FF" BorderStyle="Solid" CssClass="auto-style12" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
