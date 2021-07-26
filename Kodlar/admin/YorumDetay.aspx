<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="MaysaGazete.admin.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 242px;
    }
    .auto-style4 {
        text-align: left;
    }
    .auto-style5 {
        width: 200px;
        text-align: right;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table class="auto-style2">
    <tr>
        <td>&nbsp;&nbsp;</td>
        <td>&nbsp;&nbsp;</td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style5"><strong>Ad soyad : </strong></td>
        <td>&nbsp;&nbsp;<asp:TextBox ID="txt_ad" runat="server" Height="30px" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style5"><strong>Mail : </strong></td>
        <td>&nbsp;&nbsp;<asp:TextBox ID="txt_mail" runat="server" Height="30px" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style5"><strong>İçerik : </strong></td>
        <td>&nbsp;&nbsp;<asp:TextBox ID="txt_icerik" runat="server" Height="119px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style5"><strong>Haber : </strong></td>
        <td>&nbsp;&nbsp;<asp:TextBox ID="txt_haber" runat="server" Height="30px" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td class="auto-style3">&nbsp;&nbsp;</td>
        <td class="auto-style4">&nbsp;&nbsp;<asp:Button ID="btn_onayla" runat="server" CssClass="butonGorsel" Font-Bold="True" Font-Size="15pt" OnClick="btn_onayla_Click" Text="ONAYLA" />
        </td>
    </tr>
</table>
<table class="auto-style2">
    <tr>
        <td>&nbsp;&nbsp;</td>
        <td>&nbsp;&nbsp;</td>
    </tr>
</table>
<br />
</asp:Content>
