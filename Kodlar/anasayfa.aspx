<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="MaysaGazete.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            color: black;
            text-decoration:none;
        }
        .auto-style19 {
            text-align: right;
            width: 665px;
            color:#2a595c;
        }
        .auto-style22 {
            text-align: center;
            width: 671px;
            text-decoration:none;
        }
        .auto-style26 {
            text-align: center;
            width: 677px;
        }
        .auto_style1{
            width:100%;
        }
        .auto-style28 {
            text-align: center;
            width: 669px;
        }
        .auto-style29 {
            width: 668px;
        }
        .auto-style30 {
            width: 668px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div style="height:auto; background-color:#aaaaaa">
    <asp:DataList ID="DataList2" runat="server" Height="1000px" Width="100%" >
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style28"></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style22"><a href='HaberDetay.aspx?Haberid=<%# Eval("Haberid")%>'><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("HaberAd") %>'></asp:Label>
                        </strong></a></td>
                </tr>
            </table>             
            <table class="auto-style1">
                <tr>
                    <td class="auto-style29"></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style30">
                        <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl='<%# Eval("HaberResim") %>' Width="453px" />
                    </td>
                </tr>
            </table>
          
            <table class="auto-style1">
                <tr>
                    <td class="auto-style19">Tarih :
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("HaberTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style1" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                <tr>
                    <td class="auto-style26"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>

