<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="MaysaGazete.admin.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 602px;
        }
        .auto-style3 {
            width: 55px;
        }
        .auto-style4 {
            width: 53px;
        }
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        margin-bottom: 0;
    }
    .auto-style8 {
        text-align: center;
    }
    .auto-style9 {
        font-size: medium;
        margin-bottom: 0;
    }
    .auto-style10 {
        font-size: medium;
        font-style: italic;
        margin-bottom: 0;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="panelarka1">
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button1_Click" />
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td class="auto-style17"><strong><span class="auto-style7">HAKKIMIZDA</span></strong></td>
            </tr>
        </table>
</asp:Panel>
  <asp:Panel ID="Panel2" runat="server">
    <table class="auto-style6">
        <tr>
            <td><em>
                <asp:TextBox ID="txt_hakkimizda" runat="server" CssClass="auto-style10" Height="320px" TextMode="MultiLine" Width="600px"></asp:TextBox>
                </em></td>
        </tr>
</table>
<table class="auto-style6">
    <tr>
        <td class="auto-style8">
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="butonGorsel" Font-Bold="True" Font-Size="15pt" Text="GÜNCELLE" OnClick="Button3_Click" />
        </td>
    </tr>
</table>
    </asp:Panel>
</asp:Content>