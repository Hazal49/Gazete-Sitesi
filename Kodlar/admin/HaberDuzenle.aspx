<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="HaberDuzenle.aspx.cs" Inherits="MaysaGazete.admin.HaberDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;

        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 200px;
            text-align: right;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 200px;
            text-align: right;
            font-size: large;
        }
    .auto-style8 {
        border-style: double;
        border-color: inherit;
        border-width: medium;
        color: #fff;
        background-color: #2a595c;
    }
    .auto-style9 {
        width: 10px;
    }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style5"><strong><span class="auto-style6">Haber Adı :</span></strong> </td>
            <td>
                <asp:TextBox ID="txt_haber" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style7"><strong>Haber İçeriği : </strong> </td>
            <td>
                <asp:TextBox ID="txt_habericerik" runat="server" Height="90px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style5"><strong><span class="auto-style6">Haber Kategori :</span></strong> </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style7" style="line-height: inherit"><strong>Haber Resim : </strong></td>
            <td class="auto-style10">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="200px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="butonGorsel" Font-Bold="True" Font-Size="15pt" OnClick="Button1_Click" Height="40px" />
            </td>
        </tr>
    </table>
<table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" Text="Son Dakika Haberi Olarak Seç" CssClass="auto-style8" Font-Bold="True" Font-Size="15pt"   Height="40px" Width="337px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    </asp:Content>
