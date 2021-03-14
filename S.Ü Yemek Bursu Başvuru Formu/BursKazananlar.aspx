<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BursKazananlar.aspx.cs" Inherits="S.Ü_Yemek_Bursu_Başvuru_Formu.BursKazananlar" EnableEventValidation="False" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.3/build/pure-min.css" integrity="sha384-cg6SkqEOCV1NbJoCu11+bm0NvBRc8IYLRGXkmNrqUBfTjmMYwNKPWBTIKyw9mHNJ" crossorigin="anonymous"/>

    <title>Selçuk Üniversitesi Yemek Bursu Almaya Hak Kazanan Öğrenciler</title>
    <link href="Kazananlar.css" rel="stylesheet" />
    <link href="KazananlarPrint.css" rel="stylesheet" media="print" />
    <style type="text/css">
        .logo {
            height: 70px;
            margin-left: 0px;
        }
        
    </style>
</head>
<body>
    <header> 
            <div class="logo">
                <img  src="logo/selcuk.logo.png" width="250" height="70" />
            </div>
        </header>
    <form id="form1" runat="server">
         <div class="wrapper">
            <div class="title" >
            <br />
                  <asp:Label ID="lbl_title1" Text="T.C." CssClass="lbl_title" runat="server" /><br />
                  <asp:Label ID="lbl_title2" Text="SELÇUK ÜNİVERSİTESİ" CssClass="lbl_title" runat="server" /><br />
                  <asp:Label ID="lbl_title3" Text="SAĞLIK KÜLTÜR VE SPOR DAİRE BAŞKANLIĞI" CssClass="lbl_title" runat="server" /><br />
                  <asp:Label ID="lbl_title4" Text="YEMEK BURSU ALMAYA HAK KAZANANLAR LİSTESİ" CssClass="lbl_title" runat="server" /><br /> 
             </div>
        
             <div  class="kazanan_sec"><br />
                  <asp:LinkButton ID="linkbtn1" Text="Kazanan ilk 5 kişiyi listele - Yedek 5 Kişi oluştur"  CssClass="lbl_listele" runat="server" OnClick="linkbtn1_Click"></asp:LinkButton><br /><br />
                 <asp:LinkButton ID="linkbtn2" Text="Kazanan ilk 10 kişiyi listele - Yedek 10 kişi oluştur" CssClass="lbl_listele" runat="server" OnClick="linkbtn2_Click"></asp:LinkButton><br /><br />
                 <asp:LinkButton ID="linkbtn3" Text="Kazanan ilk 15 kişiyi listele - Yedek 15 kişi oluştur" CssClass="lbl_listele" runat="server" OnClick="linkbtn3_Click"></asp:LinkButton><br /><br />
                 <asp:LinkButton ID="linkbtn4" Text="Kazanan ilk 20 kişiyi listele - Yedek 20 kişi oluştur" CssClass="lbl_listele" runat="server" OnClick="linkbtn4_Click"></asp:LinkButton>
             </div>
             
           <div class="kazananlar_tablo">
                 <div class="tablolar" >
                     <div class="basliklar">
                     <asp:Label Text="ASİL KAZANANLAR LİSTESİ" CssClass="tb_lblbaslik" runat="server" />
                 </div>
                 
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="pure-table pure-table-horizontal pure-table-odd">
                     <Columns >
                         <asp:TemplateField HeaderText="Adı" >
                             <ItemTemplate>
                                 <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Adı") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Soyadı">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Soyadı") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Tc No">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("TcNo") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Öğrenci No">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("OgrencıNo") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Puan">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Puan") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                     </Columns>
                 </asp:GridView>
                     <div class="basliklar">
                     <asp:Label Text="YEDEK KAZANANLAR LİSTESİ" CssClass="tb_lblbaslik" runat="server" />
                 </div>

                     <asp:GridView ID="GridView2" runat="server" class="pure-table pure-table-horizontal pure-table-odd"  AutoGenerateColumns="False">
                     <Columns >
                         <asp:TemplateField HeaderText="Adı" >
                             <ItemTemplate>
                                 <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Adı") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Soyadı">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Soyadı") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Tc No">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("TcNo") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Öğrenci No">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("OgrencıNo") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Puan">
                             <ItemTemplate>
                                 <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Puan") %>'></asp:Literal>
                             </ItemTemplate>
                         </asp:TemplateField>
                     </Columns>
                 </asp:GridView>
             </div>
               
           </div>
             <div class="button-wrapper">             
                 <asp:Button ID="btn_puanlar" class="pure-button" runat="server" Text="Puanlar" OnClick="btn_puanlar_Click" />
                 <button class="pure-button" type="button" onclick="window.print()">Yazdır</button>

             </div>
        </div>
        
    </form>
</body>
</html>
