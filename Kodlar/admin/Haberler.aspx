<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Haberler.aspx.cs" Inherits="MaysaGazete.admin.Haberler" %>


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
        .auto-style16 {
            border: 1px groove #2a595c;
            border-radius: 10px;
        }
        .auto-style17 {
        width: 55px;
    }
    .auto-style18 {
        width: 54px;
    }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            width: 105px;
            text-align: right;
        }
        .auto-style21 {
        height: 42px;
        width: 487px;
    }
        .auto-style22 {
            width: 201px;
            text-align: right;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <asp:Panel ID="Panel5" runat="server"></asp:Panel>

    <asp:Panel ID="Panel1" runat="server" CssClass="panelarka1">
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button1_Click" />
                    </strong>
                </td>
                <td class="auto-style17">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px" OnClick="Button2_Click"   />
                    </strong>
                </td>
                <td class="auto-style21"><strong><span class="auto-style7">HABERLER</span></strong></td>
            </tr>
        </table>
</asp:Panel>

     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="596px" CssClass="panelarka">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("HaberAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5">
                            <a href="Haberler.aspx?Haberid=<%#Eval("Haberid") %>&islem=sil"><asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/ikonlar/deleted.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style5">
                            <a href="HaberDuzenle.aspx?Haberid=<%#Eval("Haberid") %>"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/guncelle.png" Width="40px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button3_Click"   />
                    </strong>
                </td>
                <td class="auto-style18">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px" OnClick="Button4_Click"    />
                    </strong>
                </td>
                <td class="auto-style8"><span class="auto-style7"><strong>HABER EKLEME</strong></span></td>
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
                <td class="auto-style13"><strong>Haber Adı :&nbsp;&nbsp; </strong></td>
                <td>
                    <asp:TextBox ID="txt_haberAd" runat="server" Height="30px" CssClass="auto-style16" Width="300px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style14"><strong>Haber İçerik :</strong>&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_icerik" runat="server" CssClass="auto-style16" Height="80px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
             <table class="auto-style2">
                 <tr>
                     <td class="auto-style22"><strong>Haber Resim : </strong></td>
                     <td>
                         <asp:FileUpload ID="file_haberResim" runat="server" Height="30px" Width="300px" />
                     </td>
                 </tr>
             </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style14"><strong>Haber Kategori&nbsp; :&nbsp;</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style16" Height="30px" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
             <table class="auto-style2">
                 <tr>
                     <td class="auto-style13"><strong>&nbsp; </strong></td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
             <table class="auto-style2">
                 <tr>
                     <td class="auto-style20"><strong>&nbsp;</strong></td>
                     <td class="auto-style19">
                         <asp:Button ID="btn_katEkle" runat="server" CssClass="butonGorsel" Font-Bold="True" Font-Size="20pt" Text="EKLE" OnClick="btn_katEkle_Click" />
                     </td>
                 </tr>
             </table>
             <table class="auto-style2">
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        </asp:Panel>
       
       
       
</asp:Panel>
    </asp:Content>

