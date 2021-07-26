<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="MaysaGazete.admin.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 600px;
        }
        .auto-style3 {
            width: 52px;
        }
        .auto-style4 {
            width: 55px;
        }
        .auto-style5 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style2"  >
        <tr  >
            <td class="auto-style3"><strong  >
                <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button3_Click"     />
                </strong></td>
            <td class="auto-style4"  ><strong  >
                <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px" style="font-weight: bold; font-size: x-large" OnClick="Button4_Click"     />
                </strong></td>
            <td class="auto-style21"><strong ><span class="auto-style7"  >ONAYLANAN YORUMLAR</span></strong></td>
        </tr>
    </table>
    </asp:Panel>    

    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="596px" CssClass="panelarka">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style5">
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/guncelle.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList> 

    </asp:Panel>


     <asp:Panel ID="Panel3" runat="server" style="margin-top:15px">
        <table class="auto-style2"  >
        <tr  >
            <td class="auto-style3"><strong  >
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="40px" Text="+" Width="40px"   style="font-weight: bold; font-size: x-large" OnClick="Button1_Click1"     />
                </strong></td>
            <td class="auto-style4"  ><strong  >
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="40px" Text="-" Width="40px" style="font-weight: bold; font-size: x-large" OnClick="Button2_Click1"     />
                </strong></td>
            <td class="auto-style21"><strong ><span class="auto-style7"  >ONAYSIZ YORUMLAR</span></strong></td>
        </tr>
    </table>
    </asp:Panel>    

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="596px" CssClass="panelarka">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style5">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/ikonlar/guncelle.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList> 

    </asp:Panel>
        
    </asp:Content>
