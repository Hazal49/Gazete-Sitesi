<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="GelenHaber.aspx.cs" Inherits="MaysaGazete.admin.GelenHaber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 600px;
        }
        .auto-style4 {
            width: 53px;
        }
        .auto-style5 {
            width: 136px;
            text-align: right;
        }
        .auto-style6 {
            width: 133px;
        }
        .auto-style7 {
            width: 132px;
        }
        .auto-style9 {
            width: 585px;
        }
        .auto-style10 {
            width: 413px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="40px"  style="font-weight: bold; font-size: x-large" Text="+" Width="40px" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="40px"  style="margin-left: 0; font-weight: bold; font-size: x-large;" Text="-" Width="40px" OnClick="Button2_Click" />
                </strong></td>
            <td class="auto-style21"><span class="auto-style7"><strong>ONAYSIZ HABERLER</strong></span></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" CssClass="panelarka" Width="596px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("SizdenGelenHaberAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5">
                            <a href="GelenHaberDetay.aspx?SizdenGelenid=<%#Eval("SizdenGelenid") %>"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/pages.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div></div>
    <table class="auto-style2">
        <tr>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="40px"  style="font-weight: bold; font-size: x-large" Text="+" Width="40px" OnClick="Button3_Click"  />
                </strong></td>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="40px"  style="margin-left: 0; font-weight: bold; font-size: x-large;" Text="-" Width="40px" OnClick="Button4_Click"  />
                </strong></td>
            <td class="auto-style21"><span class="auto-style7"><strong>ONAYLI HABERLER</strong></span></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" CssClass="panelarka" Width="596px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("SizdenGelenHaberAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5">
                            <a href="GelenHaberDetay.aspx?SizdenGelenid=<%#Eval("SizdenGelenid") %>"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/pages.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
