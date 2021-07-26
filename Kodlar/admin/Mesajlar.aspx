<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="MaysaGazete.admin.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 600px;
        }
        .auto-style3 {
            width: 52px;
        }
        .auto-style4 {
            width: 50px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            width: 53px;
        }
        .auto-style7 {
            width: 54px;
        }
        .auto-style8 {
            width: 281px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2"  >
        <tr  >
            <td class="auto-style4" ><strong  >
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button1_Click"  />
                </strong></td>
            <td class="auto-style3" ><strong >
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px"   style="margin-left: 0; font-weight: bold; font-size: x-large;" OnClick="Button2_Click"   />
                </strong></td>
            <td class="auto-style21"><strong ><span class="auto-style7"  >MESAJLAR</span></strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="596px" CssClass="panelarka">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style8"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5"> 
                               <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/search.png" Width="40px" /></a>
                               
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
         </asp:Panel>
         
    </asp:Content>
