<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="GelenHaberDetay.aspx.cs" Inherits="MaysaGazete.admin.GelenHaberDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 200px;
            font-size: large;
            text-align: right;
        }
        .auto-style7 {
            font-size: large;
            width: 201px;
            text-align: right;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style10 {
            width: 100%;
            margin-top: 0;
        }
    .auto-style11 {
        width: 247px;
    }
        .auto-style12 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5"><strong>Haber Ad : </strong></td>
            <td>
                <asp:TextBox ID="txt_gelenhaber" runat="server" Height="30px" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5"><strong>İçerik : </strong></td>
            <td>
                <asp:TextBox ID="txt_gelenhabericerik" runat="server" Height="92px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style7"><strong>Resim : </strong></td>
            <td>
                <asp:FileUpload ID="file_gelenhaberresim" runat="server" Height="30px" Width="250px" />
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5"><strong>Gönderen Ad : </strong></td>
            <td>
                <asp:TextBox ID="txt_gonderenAd" runat="server" Height="30px" Width="250px" OnTextChanged="txt_gonderenAd_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5"><strong>Gönderen Mail : </strong></td>
            <td>
                <asp:TextBox ID="txt_gonderenMail" runat="server" Height="30px" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style10">
        <tr>
            <td class="auto-style5"><strong>Kategori : </strong></td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="btn_GelenHaberiOnayla" runat="server" CssClass="butonGorsel" Font-Bold="True" Font-Size="15pt" Text="ONAYLA" OnClick="btn_GelenHaberiOnayla_Click" />
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
