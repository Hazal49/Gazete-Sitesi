<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="MaysaGazete.admin.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style5 {
            width: 224px;
            height: 52px;
        }
        .auto-style6 {
            width: 200px;
            text-align: right;
        }
        .auto-style8 {
            font-size: large;
        }
       
        .auto-style9 {
            text-align: center;
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
            <td class="auto-style6"><strong><span class="auto-style8">Kategori Ad :</span></strong>&nbsp; </td>
            <td>
                <asp:TextBox ID="txt_katDuzenle" runat="server" CssClass="textboxGorsel" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style6"><strong><span class="auto-style8">Kategori Resim :</span></strong>&nbsp;&nbsp; </td>
            <td>
                <asp:FileUpload ID="file_katduzenle" runat="server" CssClass="fileUpload" Width="200px" Height="30px" />
            </td>
        </tr>
         
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style5"></td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="butonGorsel" Font-Bold="True" Font-Size="15pt" Text="GÜNCELLE" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <table class="auto-style2">
                 <tr>
                     
                     <td class="auto-style9" >
                         <asp:Label ID="lbl_hata" runat="server" Text=""></asp:Label>
                     </td>
                 </tr>
             </table>
    <br />
</asp:Content>