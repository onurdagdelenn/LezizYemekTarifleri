<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="LezizYemekTarifleri.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
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
            <td class="auto-style5"><strong>Yemek Adı:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" OnTextChanged="TextBox3_TextChanged" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" BackColor="#6699FF" CssClass="fb8" ForeColor="White" OnClick="Button1_Click"  />
                <asp:Button ID="Button2" runat="server" BackColor="#6699FF" CssClass="fb8" ForeColor="White" Text="Günün Yemeği" Width="100px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
