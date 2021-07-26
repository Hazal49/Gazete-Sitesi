<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defaultadmin.aspx.cs" Inherits="MaysaGazete.admin.defaultadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMİN GİRİŞ PANELEİ</title>
    <style type="text/css">
        *{
            margin:0;
            border:0;
            padding:0;
        }
            
        .auto-style1 {
            font-weight: bold;
            font-style: italic;
            background-color: #009999;
            font-size:30px;
        }
        .auto-style2 {
            text-align: left;
            height: 265px;
            width: 292px;
            margin-left: 4px;
        }
            
        .auto-style3 {
            text-align: center;
            height: 20px;
            width: 287px;
            margin-bottom: 0;
            margin-top: 0;
        }
        .buton{
            width:100px;
            height:30px;
            background-color:#808080;
            margin-left:0;
        }
            
        .auto-style4 {
            height: 30px;
            width: 150px;
        }
            
        .auto-style5 {
            height: 681px;
            width: 500px;
        }
            
    </style>
</head>
<body style="background-color: #1e1e1e">
    <form id="form1" runat="server">
        <div style="background-color:#2a595c; margin-left:auto; margin-right:auto; margin-top:70px;" class="auto-style5">            
            <div  style="display:inherit ;justify-content:center; align-items:center; margin-left :auto; margin-right:auto; color:white; width:300px;height:300px; margin-top:100px;">
                <h3 style="text-align:center; padding:30px">GİRİŞ YAP</h3>
                <div style="margin-top:20px;margin-left:0px" class="auto-style4"> Kullanıcı Adı :<asp:TextBox ID="txt_kullanici" runat="server" Height="35px" Width="200px" ></asp:TextBox> 
                    <br />
                    <br />
                </div>
                <div style="height:30px;width:150px; margin-top:60px;margin-left:0px"> Şifre :<br />
                    <br />
                    <asp:TextBox ID="txt_sifre" runat="server" Height="35px" Width="200px" OnTextChanged="TextBox2_TextChanged" TextMode="Password" ></asp:TextBox>
                    <br />
                    
                </div>
                <div style="margin-top:80px;" class="auto-style2">
                    <em>
                    <br />
                    <asp:Button ID="btn_giris" runat="server" Text="GİRİŞ" Height="35px" Width="200px" CssClass="auto-style1" OnClick="btn_giris_Click" /> 
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Yeni şifre al"  CssClass="buton" OnClick="Button1_Click" />
                    <br />
                    <br />
                         <div class="auto-style3">
                    <asp:Label ID="lbl_bilgi" runat="server" Text=""></asp:Label>
                </div>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="İlk şifre yönetici tablosundan oluşturuldu. Yeni şifre almak için bunun bilinmesi lazım.Sizin için buraya bırakıyorum hocam. Daha sonra kaldırılacaktır. kulAd:bitirme şifre:123"></asp:Label>
               
                   
                    &nbsp;<br />
               
                   
                    </em> 
                </div>
                   
            </div>
            

        </div>
    </form>
</body>
</html>
