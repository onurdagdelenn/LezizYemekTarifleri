<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="LezizYemekTarifleri.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" Style="margin-right: 0px" Width="442px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Style="font-weight: 700; font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Malzemeler:</strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzemeleri") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="210px" Width="390px" ImageUrl="~/resimler/penne.jpg" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: left"><strong>Puan:</strong>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </td>
                                <td style="text-align: right">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong>&nbsp;<asp:Label ID="Label12" runat="server" style="font-style: italic" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

