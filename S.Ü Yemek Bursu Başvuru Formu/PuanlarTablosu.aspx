<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PuanlarTablosu.aspx.cs" Inherits="S.Ü_Yemek_Bursu_Başvuru_Formu.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>S.Ü. Burs Kriterleri Değerlendirme Tablosu</title>
    <link href="DegerlendirmeTablosu.css" rel="stylesheet" />
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
        <div class="degerlendirmet_baslik">
                <asp:Label ID="lbl_baslik_degerlendirme" Text="BURS BAŞVURUSU DEĞERLENDİRE FORMU" CssClass="baslik_degerlendirme" runat="server" />
            </div>
              <br />
            <div class="kriter_baslik">
            <asp:Label ID="aile_ikamet" Text="Ailenin İkamet Ettiği Yer" CssClass="lbl_kriter" runat="server" />      
            </div>
            <div class="aileikamet_alan">
            <div class="aileikamet_kriter">
                <asp:Label ID="krt_kira" Text="Kira" CssClass="lbl_kriterler"  runat="server"></asp:Label> <br />
                <asp:Label ID="krt_kendi" Text="Kendi Evi" CssClass="lbl_kriterler" runat="server" /> </div>
            <div class="aileikamet_puan">
                <asp:TextBox ID="txt_kira" CssClass="txt_aileikamet" runat="server" />  <br />
                <asp:TextBox ID="txt_kendi" CssClass="txt_aileikamet" runat="server" />  
          </div>
                
            </div>
           
            <div class="kriter_baslik">
                <asp:Label ID="ogr_ikamet" Text="Öğrencinin İkamet Ettiği Yer" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="ogrikamet_alan">
            <div class="ogrikamet_kriter">
                <asp:Label ID="krt_devlet" Text="Devlet Yurdu" CssClass="lbl_kriterler" runat="server"></asp:Label><br />
                 <asp:Label ID="krt_Ataturk" Text="Atatürk Yurdu" CssClass="lbl_kriterler" runat="server"></asp:Label><br />
                 <asp:Label ID="krt_ozel" Text="Özel Yurt" CssClass="lbl_kriterler" runat="server"></asp:Label><br />
                 <asp:Label ID="krt_ev" Text="Ev" CssClass="lbl_kriterler" runat="server"></asp:Label><br />
                 <asp:Label ID="krt_akraba" Text="Akraba Yanı" CssClass="lbl_kriterler" runat="server"></asp:Label><br />
                 <asp:Label ID="krt_aile" Text="Aile Yanı" CssClass="lbl_kriterler" runat="server"></asp:Label>
            </div>
                <div class="ogrikamet_puan">
                    <asp:TextBox ID="txt_devlet" CssClass="txt_ogrikamet" runat="server" /><br />
                    <asp:TextBox ID="txt_Ataturk" CssClass="txt_ogrikamet" runat="server"/><br />
                    <asp:TextBox ID="txt_ozel" CssClass="txt_ogrikamet" runat="server" />  <br />
                    <asp:TextBox ID="txt_ev" CssClass="txt_ogrikamet" runat="server"/><br />
                    <asp:TextBox ID="txt_akraba" CssClass="txt_ogrikamet" runat="server" /><br />
                    <asp:TextBox ID="txt_aile" CssClass="txt_ogrikamet" runat="server" />
                </div>

              </div>
             <div class="kriter_baslik">
                <asp:Label ID="anne_baba_durum" Text="Anne Ve Baba Durumu" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="annebaba_alan">
            <div class="annebaba_kriter">
                <asp:Label ID="krt_sagbirlikte" Text="Anne ve Baba Sağ Birlikte Yaşıyor" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_ayri" Text="Anne ve Baba Ayrı" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_1vefat" Text="Anne ve Babadan Biri Vefat" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_2vefat" Text="Anne ve Babanın İkisi de Vefat" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
            </div>
                <div class="annebaba_puan">
                    <asp:TextBox ID="txt_sagbirlikte" CssClass="txt_annebaba" runat="server"/><br />
                    <asp:TextBox ID="txt_ayri" CssClass="txt_annebaba" runat="server"/><br />
                    <asp:TextBox ID="txt_1vefat" CssClass="txt_annebaba" runat="server"/><br />
                    <asp:TextBox ID="txt_2vefat" CssClass="txt_annebaba" runat="server"/><br />
                </div>
                </div>
            <div class="kriter_baslik">
                <asp:Label ID="kardessayisi" Text="Öğrencinin Kardeş Sayısı (Kendisi Dahil)" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="kardessayisi_alan">
              <div class="kardessayisi_kriter">
                <asp:Label ID="krt_1" Text="1" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_2" Text="2" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_3" Text="3" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_4" Text="4" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_5" Text="5 ve üzeri" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
              </div>
                <div class="kardessayisi_puan">
                     <asp:TextBox ID="txt_1" CssClass="txt_kardessayisi" runat="server"></asp:TextBox><br />
                     <asp:TextBox ID="txt_2" CssClass="txt_kardessayisi" runat="server"></asp:TextBox><br />
                     <asp:TextBox ID="txt_3" CssClass="txt_kardessayisi" runat="server"></asp:TextBox><br />
                     <asp:TextBox ID="txt_4" CssClass="txt_kardessayisi" runat="server"></asp:TextBox><br />
                     <asp:TextBox ID="txt_5" CssClass="txt_kardessayisi" runat="server"></asp:TextBox><br />
                </div>
                </div>
             <div class="kriter_baslik">
                <asp:Label ID="kardesler_ogrenim" Text="Kardeşlerin Öğrenim Durumları" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="kardeslerogrenim_alan">
             <div class="kardeslerogrenim_kriter">
                <asp:Label ID="krt_okumuyo" Text="Okumuyor" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_ilkogretim" Text="İlköğretim" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_lise" Text="Lise" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_universite" Text="Üniversite" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
              </div>
                <div class="kardeslerogrenim_puan">
                    <asp:TextBox ID="txt_okumuyor" CssClass="txt_kardeslerogrenim" runat="server" /><br />
                    <asp:TextBox ID="txt_ilkogretim" CssClass="txt_kardeslerogrenim" runat="server" /><br />
                    <asp:TextBox ID="txt_lise" CssClass="txt_kardeslerogrenim" runat="server" /><br />
                    <asp:TextBox ID="txt_universite" CssClass="txt_kardeslerogrenim" runat="server" /><br />
               </div>
            </div>
            <div class="kriter_baslik">
                <asp:Label ID="baba_calisma" Text="Babanın Çalışma Durumu" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="babacalisma_alan">
             <div class="babacalisma_kriter">
                <asp:Label ID="krt_calismiyor" Text="Çalışmıyor" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_isci" Text="İşçi" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_ciftci" Text="Çiftçi" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_emekli" Text="Emekli" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_memur" Text="Memur" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
              </div>
                <div class="babacalisma_puan">
                    <asp:TextBox ID="txt_calismiyor" CssClass="txt_babacalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_isci" CssClass="txt_babacalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_ciftci" CssClass="txt_babacalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_emekli" CssClass="txt_babacalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_memur" CssClass="txt_babacalisma" runat="server"/><br />
                    </div>
                </div>
            <div class="kriter_baslik">
                <asp:Label ID="anne_calisma" Text="Annenin Çalışma Durumu" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="annecalisma_alan">
             <div class="annecalisma_kriter">
                <asp:Label ID="krt_calismiyor2" Text="Çalışmıyor" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_isci2" Text="İşçi" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_ciftci2" Text="Çiftçi" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_emekli2" Text="Emekli" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_memur2" Text="Memur" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
              </div>
             <div class="annecalisma_puan">
                    <asp:TextBox ID="txt_calismiyor2" CssClass="txt_annecalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_isci2" CssClass="txt_annecalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_ciftci2" CssClass="txt_annecalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_emekli2" CssClass="txt_annecalisma" runat="server"/><br />
                    <asp:TextBox ID="txt_memur2" CssClass="txt_annecalisma" runat="server"/><br />
                    </div>
            </div>
              <div class="kriter_baslik">
                <asp:Label ID="aylikgelir" Text="Ailenin Toplam Aylık Geliri" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="aylikgelir_alan">
             <div class="aylikgelir_kriter">
                <asp:Label ID="krt_1000" Text="0-1000 TL" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_2000" Text="1001-2000 TL" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_3000" Text="2001-3000 TL" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_üzeri" Text="3000 TL ve üzeri" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
              </div>
                <div class="aylikgelir_puan">
                    <asp:TextBox ID="txt_1000" CssClass="txt_aylikgelir" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txt_2000" CssClass="txt_aylikgelir" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txt_3000" CssClass="txt_aylikgelir" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txt_uxeri" CssClass="txt_aylikgelir" runat="server"></asp:TextBox><br />
                </div>_
            </div>
             <div class="kriter_baslik">
                <asp:Label ID="ogrcalisma_durumu" Text="Öğrencinin İş Durumu" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="ogrcalisma_alan">
             <div class="ogrcalisma_kriter">
                <asp:Label ID="krt_surekli" Text="Sürekli Çalışıyor" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_parttime" Text="Part-Time Çalışıyor" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_calismiyor3" Text="Çalışmıyor" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
             </div>
                <div class="ogrcalisma_puan">
                    <asp:TextBox ID="txt_surekli" CssClass="txt_ogrcalisma" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txt_parttime" CssClass="txt_ogrcalisma" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="txt_ogrcalismiyor" CssClass="txt_ogrcalisma" runat="server"></asp:TextBox><br />
                </div>
            </div>
            <div class="kriter_baslik">
                <asp:Label ID="bursalma_durumu" Text="Öğrencinin Burs Alma Durumu" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="bursdurumu_alan">
             <div class="bursdurumu_kriter">
                <asp:Label ID="krt_kykbursu" Text="KYK Bursu" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_ogrkredisi" Text="Öğrenim Kredisi" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_almiyorum" Text="Burs veya Öğrenim Kredisi Almıyorum" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_digerburs" Text="Diğer Burslar" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
              </div>
                <div class="bursdurumu_puan">
                    <asp:TextBox ID="txt_burs" CssClass="txt_burs" runat="server" /><br />
                    <asp:TextBox ID="txt_kredi" CssClass="txt_burs" runat="server" /><br />
                    <asp:TextBox ID="txt_almiyorum" CssClass="txt_burs" runat="server" /><br />
                    <asp:TextBox ID="txt_digerburs" CssClass="txt_burs" runat="server" /><br />
                </div>
                </div>
             <div class="kriter_baslik">
                <asp:Label ID="basaridurumu" Text="Öğrencinin Başarı Durumu (Transkript)" CssClass="lbl_kriter" runat="server"/>
            </div>
            <div class="basari_alan">
            <div class="basari_kriter">
                <asp:Label ID="krt_yeni" Text="Yeni Öğrenci" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="Label1" Text="Not Ortalaması 0 - 2.00" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="Label2" Text="Not Ortalaması 2.00 - 3.00" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
                <asp:Label ID="krt_3uzeri" Text="Not Ortalaması 3.00 ve üzeri" CssClass="lbl_kriterler" runat="server" ></asp:Label><br />
              </div>
                <div class="basari_puan">
                     <asp:TextBox ID="txt_yeniogr" CssClass="txt_basari" runat="server" /><br />
                     <asp:TextBox ID="txt_20" CssClass="txt_basari" runat="server" /><br />
                     <asp:TextBox ID="txt_30" CssClass="txt_basari" runat="server" /><br />
                     <asp:TextBox ID="txt_30uzeri" CssClass="txt_basari" runat="server" /><br />
                </div>
                </div>
            <div>
                
            <asp:Button ID="btn_guncelle" Text="Puanları Güncelle" CssClass="btn_guncelle" runat="server" OnClick="btn_guncelle_Click" />
                <asp:Button ID="btn_Listele" CssClass="btn_listele" runat="server" Text="Listele" OnClick="btn_Listele_Click" />

            </div>
        </div>
    </form>
</body>
</html>
