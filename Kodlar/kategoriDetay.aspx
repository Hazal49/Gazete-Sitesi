<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="MaysaGazete.kategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:#aaaaaa">
        <asp:DataList ID="DataList3" runat="server" Width="100%">
            <ItemTemplate>
               
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("HaberAd") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style6">
                            <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# Eval("HaberResim") %>' Width="578px" />
                        </td>
                    </tr>
                </table>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                </table>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Habericerik") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="auto-style5">
                    <tr>
                        <td  class="auto-style4" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("HaberTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </asp:Content>
