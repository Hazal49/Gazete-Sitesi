<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="MaysaGazete.admin.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 370px;
        text-align: left;
        height: 18px;
    }
    .auto-style5 {
        text-align: right;
        height: 18px;
    }
    .auto-style6 {
        font-size: large;
    }
    .auto-style7 {
        font-size: x-large;
    }
   .panelarka2{
        background-color:#aaaaaa;
        height:auto;
    }
    .panelarka1{
        background-color:#808080;
        height:auto;
    }
        .auto-style8 {
            height: 42px;
        }
        .auto-style9 {
            font-size: x-large;
            font-weight: bold;
            margin-left: 0;
        }
        .auto-style11 {
            height: 42px;
            width: 48px;
        }
        .auto-style13 {
            width: 200px;
            text-align: right;
        }
        .auto-style14 {
            width: 199px;
            text-align: right;
        }
        .auto-style15 {
            width: 226px;
        }
        .auto-style16 {
            border: 1px groove #2a595c;
            border-radius: 10px;
        }
        .auto-style17 {
        height: 42px;
        width: 460px;
    }
        .auto-style18 {
            text-align: center;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
    <asp:Panel ID="Panel1" runat="server" CssClass="panelarka1">
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px" OnClick="Button1_Click" style="font-weight: bold; font-size: x-large" />
                    </strong>
                </td>
                <td class="auto-style10">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td class="auto-style17"><strong><span class="auto-style7">KATEGORİ LİSTESİ</span></strong></td>
            </tr>
        </table>
</asp:Panel>

     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="596px" CssClass="panelarka">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5">
                            <a href="kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"><asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/ikonlar/deleted.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style5">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/guncelle.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
         
         
    </asp:Panel>
    <div style="background-color:#aaaaaa; height:20px;"></div>
    <asp:Panel ID="Panel3" runat="server" CssClass="panelarka1">
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">
                    <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px" OnClick="Button3_Click" style="font-weight: bold; font-size: x-large"   />
                    </strong>
                </td>
                <td class="auto-style10">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px" OnClick="Button4_Click"   />
                    </strong>
                </td>
                <td class="auto-style8"><strong><span class="auto-style7">KATEGORİ EKLEME</span></strong></td>
            </tr>
        </table>
       
       
        <asp:Panel ID="Panel4" runat="server">
             <table class="auto-style2">
            <tr>
                <td></td>
                <td></td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style13"><strong>Kategori Adı :&nbsp;&nbsp; </strong></td>
                <td>
                    <asp:TextBox ID="txt_katAd" runat="server" Height="30px" CssClass="auto-style16" Width="199px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style14"><strong>Kategori Resim :</strong>&nbsp;&nbsp; </td>
                <td>
                   <asp:FileUpload ID="file_katResim" runat="server" Height="30px" CssClass="fileUpload" />
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style15"></td>
                <td>
                    <asp:Button ID="btn_katEkle" runat="server" CssClass="butonGorsel" Font-Bold="True" Font-Size="20pt" Text="EKLE" OnClick="btn_katEkle_Click" />
                </td>
            </tr>
        </table>
             <table class="auto-style2">
                 <tr>
                     <td class="auto-style18">
                         <asp:Label ID="lbl_hata" runat="server" Text=""></asp:Label>
                     </td>
                 </tr>
             </table>
        </asp:Panel>
        <br />
       
       
</asp:Panel>
    </asp:Content>
