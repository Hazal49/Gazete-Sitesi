<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="HaberDetay.aspx.cs" Inherits="MaysaGazete.HaberDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
            background-color:#808080;
        }
        .auto-style6 {
            text-align: center;             
        }
        .table1{
            width:150px;
            height:40px;
        }
        .table2{
            width:300px;
            height:40px;           
            border-radius:10px;
        }
         .table3{
            width:300px;
            height:40px;
            padding:15px;
        }
        .auto-style8 {
            background-color: #006666;
            border-radius:10px;
        }
        .auto-style10 {           
            height:30px;
            background-color:#808080;
            width: 694px;
            text-align: left;
            color:black;
        }
        .arkarenk{
            background-color:#aaaaaa;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            width: 100%;
            height: 67px;
        }
        .auto-style13 {
            width: 682px;
        }
        .auto-style15 {
            text-align: right;
            color: black;
            width: 900px;
            position: relative;
            left: 2px;
            right: 2px;
            top: 2px;
            height: 25px;
        }
        .auto-style16 {
            width: 518px;
        }
        .auto-style19 {
            width: 380px;
            color: #000000;
        }
        .auto-style20 {
            width: 265px;
            color: #000000;
            text-align: right;
        }
        .auto-style21 {
            width: 300px;
            color: #000000;
            text-align: right;
        }
        .auto-style22 {
            width: 682px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <strong>
    <table class="auto-style12">
        <tr>
            <td class="auto-style6"><strong>
                <div style=" background-color: #808080">
                    <strong>
                <asp:Label ID="detayBaslık" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                    
                    </strong>
                </strong>
    </strong>
                    
                    </strong>
                    
                    <div style="background-color:#aaaaaa ; padding:10px;margin-bottom:10px">
                <asp:Label ID="detayicerik" runat="server" BorderStyle="Groove" Text="Label"></asp:Label>
                    </div>
   
    <strong>
                    <div class="auto-style11">YORUMLAR</div>
                </div>
            </td>
        </tr>
    </table>

    <div class="arkarenk">
    <asp:DataList ID="DataList2" runat="server" Width="100%">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="width:160px; color:black"><strong>
                        <asp:Label ID="detay_gonerenAd" runat="server" Text='<%# Eval("YorumAdSoyad") %>' Width="192px"></asp:Label>
                        </strong></td>
                    </strong>
                    <td style="color:black" class="auto-style16">
                        <strong>:<asp:Label ID="detay_tarih" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15" style="border-bottom-style: groove; border-color: #000000; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        
    </asp:DataList>
    </div>
    <div style="background-color:#aaaaaa"> 
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">&nbsp;YORUM EKLE</td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style21"><strong>Ad Soyad :</strong></td>
                <td class="auto-style13"><strong>
                    <asp:TextBox ID="txt_yorumAd" runat="server" BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" CssClass="table2" Height="35px" Width="300px"></asp:TextBox>
                    </strong></td>
            </tr>
        </table>
            <strong>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style21"><strong>Mail :</strong></td>
                    <td class="auto-style13"><strong>
                        <asp:TextBox ID="txt_yorumMail" runat="server" BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" CssClass="table2" Height="35px" TextMode="Email" Width="300px"></asp:TextBox>
                        </strong></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style20"><strong>Yorumunuz :</strong></td>
                    <td class="auto-style13"><strong>
                        <asp:TextBox ID="txt_yorumicerik" runat="server" BorderColor="#006666" BorderStyle="Solid" BorderWidth="2px" CssClass="table2" Height="35px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        </strong></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style22"><strong>
                        <asp:Button ID="Button1" runat="server" BorderColor="#006666" CssClass="auto-style8" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="GÖNDER" Width="182px" />
                        </strong></td>
                </tr>
            </table>
            </strong>
        </asp:Panel>
    </div>
    </strong></asp:Content>
