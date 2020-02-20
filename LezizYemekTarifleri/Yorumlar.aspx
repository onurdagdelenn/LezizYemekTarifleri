<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="LezizYemekTarifleri.Yorumlar" %>

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
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="20px" Text="+" Width="20px" OnClick="Button1_Click1" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="tb5" Height="20px" Text="-" Width="20px" OnClick="Button2_Click" />
                </strong></td>
                <td>Onaylanan Yorumlar</td>
            </tr>
        </table>
    </asp:Panel>
    
        <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="445px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/edit.png" Width="30px" />
                            </td>
                            <td class="auto-style13">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/trash.png" Width="30px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="tb5" Height="20px" Text="+" Width="20px" OnClick="Button3_Click"  />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="tb5" Height="20px" Text="-" Width="20px" OnClick="Button4_Click"  />
                </strong></td>
                <td>Onaylanmayan Yorumlar</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="445px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                               <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">  <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/edit.png" Width="30px" /></a>
                            </td>
                            <td class="auto-style13">
                              <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/trash.png" Width="30px" /> 
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>


    
</asp:Content>
