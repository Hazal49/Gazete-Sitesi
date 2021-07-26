<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="şifre.aspx.cs" Inherits="MaysaGazete.admin.şifre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMİN ŞİFEE OLUŞTUR</title>
    <style type="text/css">
         
            
        .auto-style1 {
            font-weight: bold;
            font-style: italic;
            background-color: #009999;
            font-size:30px;
            text-align:center;
        }
                    
                                   
        .duzen{
            flex-grow: 1;
            width: 50%;
             }
                   
      
                   
        .auto-style12 {
             
        }
                   
       
                   
      
                   
        .auto-style14 {
            width: 500px;
            height: 561px;
        }
                   
       
                   
      
                   
        .auto-style17 {
            height: 566px;
            width: 500px;
        }
                   
       
                   
      
                   
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            width: 197px;
        }
        .auto-style20 {
            text-align: left;
        }
                   
       
                   
      
                   
        .auto-style21 {
            width: 197px;
            text-align: right;
        }
                   
       
                   
      
                   
        </style>
</head>
<body>
    <form id="form1" runat="server">
         
        <div style="background-color:#2a595c; margin-left:auto; margin-right:auto; margin-top:70px; text-align:center" class="auto-style17">            
            <div  style="justify-content:center; align-items:center; color:white; " class="auto-style14">  
                <h3 style="text-align:center; padding:5px" class="auto-style12">YENİ ŞİFRE AL</h3>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style21">Eski Kullanıcı Adı : </td>
                        <td class="auto-style20"> <asp:TextBox ID="txt_eskikul" runat="server" Height="35px" Width="200px" TextMode="Password" ></asp:TextBox></td>
                    </tr>
                </table>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style21">Yeni Kullanıcı Adı : </td>
                        <td class="auto-style20"><asp:TextBox ID="txt_yenikul" runat="server" Height="35px" Width="200px"   TextMode="Password" ></asp:TextBox></td>
                    </tr>
                </table>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style21">Kullanıcı Adı Tekrar : </td>
                        <td class="auto-style20"><asp:TextBox ID="txt_kultekrar" runat="server" Height="35px" Width="200px"   TextMode="Password" ></asp:TextBox></td>
                    </tr>
                </table>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style21">Eski Şifre : </td>
                        <td class="auto-style20"><asp:TextBox ID="txt_eskisifre" runat="server" Height="35px" Width="200px" TextMode="Password" ></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style21">Yeni Şifre : </td>
                        <td class="auto-style20"><asp:TextBox ID="txt_yenisifre" runat="server" Height="35px" Width="200px"   TextMode="Password" ></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style21">Şifre Tekrar : </td>
                        <td class="auto-style20"><asp:TextBox ID="txt_sifretekrar" runat="server" Height="35px" Width="200px"   TextMode="Password" ></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19">
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="auto-style20">
                    <asp:Button ID="Button1" runat="server" Text="GİRİŞ" Height="35px" Width="264px" CssClass="auto-style1" OnClick="btn_sifreDegistir_Click"/>
                         </td>
                    </tr>
                </table>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style20">
                    <asp:Label ID="lbl_hatamesajı" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                </div>
        </div>
    </form>
</body>
</html>
