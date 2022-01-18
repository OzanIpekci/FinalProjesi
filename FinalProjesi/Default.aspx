<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProjesi.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ürün Kodu"></asp:Label>
            <asp:TextBox ID="tbxUrunKodu" runat="server" style="margin-left: 179px"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
        <asp:TextBox ID="tbxUrunAdi" runat="server" style="margin-left: 191px" Width="163px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Stok Miktarı"></asp:Label>
        <asp:TextBox ID="tbxStokMiktari" runat="server" style="margin-left: 169px" Width="164px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Birim Fiyat"></asp:Label>
        <asp:TextBox ID="tbxBirimFiyat" runat="server" style="margin-left: 177px" Width="163px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Ürün Açıklaması"></asp:Label>
        <br />
        <asp:TextBox ID="tbxUrunAciklamasi" runat="server" Height="96px" style="margin-left: 0px" Width="428px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Sonuç:"></asp:Label>
&nbsp;<asp:Label ID="LblSonuc" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="btnekle" runat="server" Height="29px" OnClick="btnekle_Click" Text="Ekle" Width="113px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsil" runat="server" Height="29px" Text="Sil" Width="113px" OnClick="btnsil_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnguncelle" runat="server" Height="29px" Text="Güncelle" Width="113px" OnClick="btnguncelle_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlistele" runat="server" Height="29px" OnClick="btnlistele_Click" Text="Listele" Width="113px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="1344px">
        </asp:GridView>
    </form>
</body>
</html>
