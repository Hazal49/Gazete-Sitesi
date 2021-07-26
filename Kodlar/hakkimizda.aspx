<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="MaysaGazete.hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .arkafon{
            background-color:#aaaaaa;
        }
        .auto-style6 {
            width: 100%;
            background-color: #808080;
        }
        .auto-style7 {
            background-color: #808080;
        text-align: left;
    }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 675px;
        }
        </style>
</asp:Content>
 
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="arkafon">
        <asp:DataList ID="DataList2" runat="server" Width="100%">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7"><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10" >
                    </td>
                </tr>
            </table>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style9">
                        <asp:Image ID="Image1" runat="server" Height="171px" ImageUrl='~/resimler/indir.png' Width="574px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </div>
    </asp:Content>
 