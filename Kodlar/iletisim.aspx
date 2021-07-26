<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="MaysaGazete.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            background-color: #808080;
            color:black;
        }
        .textboxlar{
            text-align:left;
            height:40px;
            width:200px;
            border-radius:10px;
            background-color:#f3ebc3;
        }
         
        .auto-style5 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #006666;
            border-radius:10px;
        }
        .background{
            background-color:#aaaaaa;
        }
        .auto-style7 {
            width: 220px;
            text-align: right;
            color: black;
        }
        .auto-style10 {
            text-align: left;
            border-radius: 10px;
            background-color: #f3ebc3;
        }
       
        .auto-style12 {
            color: #FFFFCC;
            text-decoration: none;
            width: 698px;
        }
        .auto-style13 {
            width: 469px;
        }
        .auto-style14 {
            color: black;
            height:30px;
            background-color: #808080;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 219px;
            text-align: right;
        }
        .auto-style17 {
            width: 257px;
            text-align: right;
        }
        .auto-style18 {
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="background">
    <table class="auto-style12">
        <tr>
            <td class="auto-style14"> MESAJ PANELİ </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style13">
                <br />
            </td>
        </tr>
    </table>
        <table class="auto-style15">
            <tr>
                <td class="auto-style16"><strong>Ad Soyad :</strong></td>
                <td>
                <asp:TextBox ID="txtMesajGondereen" runat="server" CssClass="textboxlar" Width="250px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style15">
            <tr>
                <td class="auto-style16"><strong>Mail Adresiniz :</strong></td>
                <td>
                <asp:TextBox ID="txtmesajmail" runat="server" CssClass="textboxlar" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style15">
            <tr>
                <td class="auto-style16"><strong>Konu :</strong></td>
                <td>
                <asp:TextBox ID="txt_mesajbaslik" runat="server" CssClass="textboxlar" Width="250px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style15">
            <tr>
                <td class="auto-style16"><strong>Mesajınız :</strong></td>
                <td>
                <asp:TextBox ID="txt_mesaj" runat="server" CssClass="auto-style10" TextMode="MultiLine" Height="100px" Width="250px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style15">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td><strong>             
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="GÖNDER" BorderStyle="Solid" BorderWidth="2px" Font-Size="15pt" OnClick="Button1_Click" Height="50px" Width="171px" />
                </strong></td>
            </tr>
        </table>
    <table class="auto-style15">
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
