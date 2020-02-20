<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="LezizYemekTarifleri.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #FFCC99;
        }

        .auto-style6 {
            height: 23px;
            text-align: right;
        }

        .auto-style7 {
            height: 23px;
            text-align: left;
            width: 242px;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            height: 23px;
            width: 66px;
            text-align: right;
        }

        .auto-style11 {
            width: 15px;
        }

        .auto-style12 {
            width: 21px;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="20px" Text="+" Width="20px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="tb5" Height="20px" Text="-" Width="20px" OnClick="Button2_Click" />
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
                        <td class="auto-style9">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/edit.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/trash.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Style="background-color: #FFCC99; margin-top: 5px">

        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="tb5" Height="20px" Text="+" Width="20px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="tb5" Height="20px" Text="-" Width="20px" OnClick="Button4_Click" />
                </strong></td>
                <td>Yemek Ekleme</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tarif:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="BtnEkle" runat="server" BackColor="#6699FF" CssClass="fb8" ForeColor="White" OnClick="BtnEkle_Click" Text="Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

