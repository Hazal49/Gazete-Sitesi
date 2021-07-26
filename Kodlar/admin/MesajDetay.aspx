<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="MaysaGazete.admin.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
        .auto-style7 {
            width: 100px;
            font-size: x-large;
            text-align: right;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style13 {
            width: 100px;
            font-size: medium;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style7"><span class="auto-style12">Gönderen :</span><span class="auto-style8"> </span><strong>&nbsp;</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="txt_gonderen" runat="server" Height="30px" Width="490px"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style13">Baslık :</td>
        <td class="auto-style10">
            <asp:TextBox ID="txt_baslik" runat="server" Height="30px" Width="490px"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style13">Mail :</td>
        <td class="auto-style10">
            <asp:TextBox ID="txt_mail" runat="server" Height="30px" TextMode="Email" Width="490px"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style13">İçerik :</td>
        <td class="auto-style10">
            <asp:TextBox ID="txt_icerik" runat="server" Height="139px" TextMode="MultiLine" Width="490px"></asp:TextBox>
        </td>
    </tr>
</table>
<br />
<br />
</asp:Content>
