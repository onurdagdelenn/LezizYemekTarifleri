<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="LezizYemekTarifleri.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            background-color: #FFCC99;
        }

        .auto-style11 {
            width: 15px;
        }

        .auto-style12 {
            width: 21px;
        }
        .auto-style13 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="20px" Text="+" Width="20px" />
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="tb5" Height="20px" Text="-" Width="20px"  />
                    </strong></td>
                <td>Yemek Listesi</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/rating.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
