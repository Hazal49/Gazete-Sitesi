<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="MaysaGazete.admin.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 597px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            width: 578px;
        }
    .auto-style7 {
        width: 55px;
    }
    .auto-style8 {
        width: 254px;
    }
    .auto-style9 {
        width: 139px;
    }
    .auto-style10 {
        width: 53px;
    }
    .auto-style11 {
        width: 57px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:Panel ID="Panel1" runat="server" CssClass="panelarka1">
        <table class="auto-style2">
            <tr>
                <td class="auto-style10">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button1_Click" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px" OnClick="Button2_Click" style="font-size: x-large; font-weight: bold" />
                    </strong>
                </td>
                <td class="auto-style21"><strong><span class="auto-style7">HABERLER</span></strong></td>
            </tr>
        </table>
</asp:Panel>

     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="596px" CssClass="panelarka">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style8"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("HaberAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5">
                            <a href="HaberDuzenle.aspx?Haberid=<%#Eval("Haberid") %>"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/tick.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
