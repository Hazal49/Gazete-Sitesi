<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="araDetay.aspx.cs" Inherits="MaysaGazete.araDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 109%;
            text-align: right;
        }
        .auto-style6 {
            color: #FFFFCC;
            text-decoration: none;
            width: 678px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div style="background-color:#aaaaaa">
        <asp:DataList ID="DataList3" runat="server" Width="100%">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("HaberAd") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# Eval("HaberResim") %>' Width="578px" />
                        </td>
                    </tr>
                </table>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Habericerik") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style5" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("HaberTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
