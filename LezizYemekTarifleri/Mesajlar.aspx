<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="LezizYemekTarifleri.Mesajlar" %>
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
        .auto-style14 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td>Mesaj Listesi</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="445px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                              <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/study.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
</asp:Content>
