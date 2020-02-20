<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="LezizYemekTarifleri.Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #FFCC99;
        }

        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td>Tarif Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/study.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
