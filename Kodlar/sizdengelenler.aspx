<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="sizdengelenler.aspx.cs" Inherits="MaysaGazete.sizdengelenler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
            height:40px;
            width:100px;
             
        }
        .auto-style{
            width:200px;
            height:40px;
            text-align:left;
           
        }
        .tablo{
            width:100%;
        }
        
        .auto-style4 {
            background-color: #006666;
        }
        .textbox{
            background-color:#f3ebc3;
            border-radius:10px;
        }
        .auto-style6 {
            width: 250px;
            text-align: right;
        }
    .auto-style7 {
        width: 210px;
        text-align: right;
        height: 20px;
    }
    .auto-style8 {
        width: 209px;
        text-align: right;
        height: 20px;
    }
    .auto-style10 {
        width: 264px;
        text-align: right;
        height: 20px;
    }
    .auto-style11 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:auto ; background-color:#aaaaaa">
       
        <table class="tablo">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="tablo">
            <tr>
                <td class="auto-style7">Haber Adı :</td>
                <td>
                <asp:TextBox ID="txt_haberAd" runat="server" Width="300px" Height="35px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="tablo">
            <tr>
                <td class="auto-style8">İçerik :</td>
                <td>
                <asp:TextBox ID="txt_icerik" runat="server" Width="300px" Height="35px" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="tablo">
            <tr>
                <td class="auto-style8">Resim :</td>
                <td>
                <asp:FileUpload ID="fu_haberResim" runat="server" Width="300px" Height="35px" />
                </td>
            </tr>
        </table>
        <table class="tablo">
            <tr>
                <td class="auto-style7">Ad-Soyad :</td>
                <td>
                <asp:TextBox ID="txt_adSoyad" runat="server" Width="300px" Height="35px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="tablo">
            <tr>
                <td class="auto-style8">Mail :</td>
                <td>
                <asp:TextBox ID="txt_mail" runat="server" Width="300px" Height="35px" TextMode="Email" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="tablo">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Size="15pt" Text="GÖNDER" Width="150px" ForeColor="White" Height="35px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        
        <table class="tablo">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        
    </div>
   
  
</asp:Content>
