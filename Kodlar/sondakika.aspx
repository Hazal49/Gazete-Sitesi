<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="sondakika.aspx.cs" Inherits="MaysaGazete.sondakika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
            color:black;
        }
      
        .auto-style4 {
            text-align: right;
            width: 662px;
        }
        .auto-style5 {
            text-align: right;
            width: 667px;
            color:black;
        }
        .auto-style8 {
            text-align: center;
            width: 666px;
            color:black;
        }
        .auto-style9 {
            text-align: center;
            width: 668px;
        }
        .auto-style10 {
            width: 664px;
        }
        .auto-style11 {
            width: 672px;
        }
        .auto-style12 {
            width: 683px;
        }
        .auto-style13 {
            text-align: center;
            width: 672px;
            color: black;
        }
        .auto-style14 {
            color: #000000;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:auto">
        <div style="background-color:#aaaaaa">
            
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" Width="100%" >
        <ItemTemplate>

           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12"></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("HaberAd") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Image ID="img_sondk" runat="server" Height="180px" ImageUrl='<%# Eval("HaberResim") %>' Width="415px" />
                    </td>
                </tr>
            </table>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style10"></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Habericerik") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table align="center" class="auto-style14">
                <tr>
                    <td class="auto-style4">Tarih :&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("HaberTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </div>
    </div>
</asp:Content>
