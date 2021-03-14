<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="S.Ü_Yemek_Bursu_Başvuru_Formu.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Selçuk Üniversitesi Yemek Bursu Başvuru Formu</title>
    <link href="/stil.css" rel="stylesheet" />
    <link href="DefaultPrint.css" rel="stylesheet" media="print" />

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
                  <asp:Label ID="lbl_title4" Text="YEMEK BURSU BAŞVURU FORMU" CssClass="lbl_title" runat="server" /><br /> 
        </div>
            <div class="birinci_bolum">
                <div class="person-logo">
                  <img src="logo/person-logo.png" style="height: 45px; width: 45px" /></div>
                <div class="birinci_bol_baslik">
                    Kişisel Bilgiler
                </div>
            </div>
            <div class="birinci_bolum_fotograf"><br />
                <div class="ogr-fotograf">
                    <asp:Image ImageUrl="logo/kisi_foto.png" CssClass="img_foto" runat="server" />
                </div><br />
                 <asp:FileUpload ID="btn_fotograf"  CssClass="btn_fotograf" runat="server" Width="157px" />
                
            </div>
            <div class="birinci_bolum_info">
                <asp:Label ID="lbladi" Text="Adı" CssClass="lbl-ad-sa-tc-fak" runat="server" ></asp:Label> <span class="red">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtadi" cssClass="txtad" MaxLength="30" runat="server"  ></asp:TextBox>
                <asp:Label ID="lblbolum" Text="Bölüm" CssClass="lbl-bol-no-tel-dsp" runat="server" ></asp:Label> <span class="red">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtbolum" cssClass="txtbol" MaxLength="200" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox><br />
                <asp:Label ID="lblsoyadi" Text="Soyadı" CssClass="lbl-ad-sa-tc-fak" runat="server"></asp:Label> <span class="red">*</span>&nbsp;
                <asp:TextBox ID="txtsoyadi" cssClass="txtsoyad" MaxLength="30" runat="server" Width="200px"></asp:TextBox> 
                <asp:Label ID="lblogrno" Text="Öğrenci No" CssClass="lbl-bol-no-tel-dsp" runat="server" /> <span class="red">*</span>
                <asp:TextBox ID="txtogrno" cssClass="txtogr-no ogrno-input" runat="server"></asp:TextBox><br /> 
                <asp:Label ID="lbltc" Text="T.C. Kimlik No" CssClass="lbl-ad-sa-tc-fak" runat="server" ></asp:Label> <span class="red">*</span>
                <asp:TextBox ID="txttc" cssClass="txttc tc-input" MaxLength="11" runat="server"  ></asp:TextBox>
                <asp:Label ID="lbltel" Text="Telefon Numarası" CssClass="lbl-bol-no-tel-dsp" runat="server" ></asp:Label> <span class="red">*</span>&nbsp;&nbsp;
                <asp:TextBox ID="txttel" cssClass="txttel tel-input" MaxLength="20" runat="server" TextMode="Phone" placeholder="(___) ___ __ __" ></asp:TextBox><br />
                <asp:Label ID="lblfak" Text="Fakülte" CssClass="lbl-ad-sa-tc-fak" runat="server" ></asp:Label> <span class="red">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtfak" cssClass="txtfak" MaxLength="200" runat="server" ></asp:TextBox>
                <asp:Label ID="lbldsp" Text="Disiplin Cezası" CssClass="lbl-bol-no-tel-dsp" runat="server"></asp:Label> <span class="red">*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
                <asp:RadioButton ID="rd_var" Text="Var" CssClass="radio" GroupName="disiplin" runat="server" /> 
                <asp:RadioButton ID="rd_yok" Text="Yok" CssClass="radio" GroupName="disiplin" runat="server" /><span class="red">(Belgelemek kaydıyla)</span><br /><br />
                <asp:Label ID="lbl_ev" Text="Ailenin ikamet ettiği yer" CssClass="lbl-ev" runat="server"></asp:Label><span class="red">*</span>
                <asp:RadioButton ID="rd_kira" Text="Kira" CssClass="rd_ev" GroupName="rd_ev" runat="server" />
                <asp:RadioButton ID="rd_kendi" Text="Kendi evi" CssClass="rd_ev" GroupName="rd_ev" runat="server" />
            </div>
            <div class="ikinci_bolum">
            <div class="ikamet">
                <div class="ikamet_logo" >
                    <img src="logo/ikamet_logo.png" style="height: 51px; width: 55px" />
                </div>
                <div class="ikamet_baslik">
                    Öğrencinin İkamet Ettiği Yer <span class="red">*</span>
                </div>
                
            </div>
            <div class="anne_baba_durum">
             <div class="anne_baba_logo">
                <img src="logo/family%20(1).png"  style="height: 50px; width: 63px" />
            </div>
                <div class="anne_baba_baslik">
                    Anne ve Baba Durumu <span class="red">*</span>
                </div>   
             </div>
            </div>
            <div class="ikinci_bolum_info">
            <div class="ikamet_secenek">
                <br />
                <asp:RadioButton ID="dvlt_yurdu" Text="Devlet Yurdu" CssClass="radio" GroupName="ikamet" runat="server" /><br /><br />
                <asp:RadioButton ID="ata_yurdu" Text="Atatürk Yurdu" CssClass="radio" GroupName="ikamet" runat="server" /><br /><br />
                <asp:RadioButton ID="ozel_yurt" Text="Özel Yurt" CssClass="radio" GroupName="ikamet" runat="server" /><br /><br />
                <asp:RadioButton ID="ev" Text="Ev" CssClass="radio" GroupName="ikamet" runat="server" /><br /><br />
                <asp:RadioButton ID="akraba_yanı" Text="Akraba Yanı" CssClass="radio" GroupName="ikamet" runat="server" /><br /><br />
                <asp:RadioButton ID="aile_yanı" Text="Aile Yanı" CssClass="radio" GroupName="ikamet" runat="server" /><br />
            </div>
            <div class="anne_baba_secenek">
                <br /><br />
                <asp:RadioButton ID="anne_baba_sag" Text="Anne ve baba sağ birlikte yaşıyor" CssClass="radio" GroupName="anne_baba_durum" runat="server" /><br /><br />
                <asp:RadioButton ID="anne_baba_ayri" Text="Anne ve baba ayrı" CssClass="radio" GroupName="anne_baba_durum" runat="server" /><br /><br />
                <asp:RadioButton ID="anne_baba_birivefat" Text="Anne ve babadan biri vefat" CssClass="radio" GroupName="anne_baba_durum" runat="server" /><br /><br />
                <asp:RadioButton ID="anne_baba_ikivefat"  Text="Anne ve babanın ikisi de vefat" CssClass="radio" GroupName="anne_baba_durum" runat="server" />
            
            </div>
            </div>
            <div class="ucuncu_bolum">
                <div class="kardesler">
                    <div class="kardesler_logo">
                        <img src="logo/kardeslerlogo.png" height="51" width="55" />
                    </div>
                    <div class="kardesler_baslik">
                        Kardeş Sayısı ve Öğrenim Durumları <span class="red">*</span>
                    </div>
                </div>
                <div class="ekonomik_durum">
                    <div class="ekonomik_durum_baslik">
                        Ailenin Ekonomik Durumu <span class="red">*</span>
                    </div>
                </div>
            </div>
            <div class="ucuncu_bolum_info">
                <div class="kardesler_secenek"><br />
                    <asp:Label ID="kardes_sayi" Text="Kardeş Sayısı" CssClass="lblkardes" runat="server" /> <span class="red">*(kendisi dahil)</span>
                    <asp:TextBox ID="txtkardes" CssClass="txtkardes" MaxLength="2" runat="server" /> <br /><br /><br /><br />
                    <asp:Label ID="açıklama" Text="Öğrenim gören kardeş sayısını adet olarak belirtiniz." CssClass="lblaciklama" runat="server" /><br />
                    <asp:Label ID="okumuyorlbl" Text="Okumuyor" CssClass="lblokuma" runat="server" />
                    <asp:TextBox ID="okumuyor" CssClass="txtokumuyor" MaxLength="2" runat="server" />
                    <asp:Label ID="liselbl" Text="Lise" CssClass="lblokuma" runat="server" />
                    <asp:TextBox ID="lise" CssClass="txtlise" MaxLength="2" runat="server" /><br />
                    <asp:Label ID="ilkogretimlbl" Text="İlköğretim" CssClass="lblokuma" runat="server" />
                    <asp:TextBox ID="ilkogretim" CssClass="txtilkogretim" MaxLength="2" runat="server" />
                    <asp:Label ID="universitelbl" Text="Üniversite" CssClass="lblokuma" runat="server" />
                    <asp:TextBox ID="universite"  CssClass="txtuniversite" MaxLength="2" runat="server" /><span class="red">(Kendisi dahil)</span>  
                </div>
                    <div class="ekonomik_durum_baba">
                     <br />
                    <asp:Label ID="baba" Text="BABA" CssClass="lblbaba" runat="server" />
                    <asp:RadioButton ID="calisma_radio1" Text="Çalışıyor" CssClass="radio" GroupName="calisma_baba" runat="server" />
                    <asp:RadioButton ID="calisma_radio2" Text="Çalışmıyor" CssClass="radio" GroupName="calisma_baba" runat="server"/><br />
                        <asp:Label ID="lblmeslek" Text="Mesleği" CssClass="lbl_meslek" runat="server" />   
                        <asp:DropDownList ID="drpmeslek" CssClass="drp_meslek" runat="server" Height="30px" Width="130px">
                            <asp:ListItem Value="0">Çalışmıyor</asp:ListItem>
                            <asp:ListItem Value="1">İşçi</asp:ListItem>
                            <asp:ListItem Value="2">Çiftçi</asp:ListItem>
                            <asp:ListItem Value="3">Emekli</asp:ListItem>
                            <asp:ListItem Value="4">Memur</asp:ListItem>
                        </asp:DropDownList><br />
                        <asp:Label ID="lbl_netgelir1" Text="Net geliri" CssClass="lbl_meslek" runat="server"></asp:Label>
                        <asp:TextBox ID="txt_netgelir1" Text="0" CssClass="txt_netgelir" runat="server"></asp:TextBox>
                   </div>
                <div class="ekonomik_durum_anne">
                    <br />
                    <asp:Label ID="anne" Text="ANNE" CssClass="lblanne" runat="server" />
                    <asp:RadioButton ID="calisma_radio3" Text="Çalışıyor" CssClass="radio" GroupName="calisma_anne" runat="server" />
                    <asp:RadioButton ID="calisma_radio4" Text="Çalışmıyor" CssClass="radio" GroupName="calisma_anne" runat="server"  /><br />
                     <asp:Label ID="lbl_meslek" Text="Mesleği" CssClass="lbl_meslek" runat="server" />   
                        <asp:DropDownList ID="DropDownList1" CssClass="drp_meslek" runat="server" Height="30px" Width="130px">
                            <asp:ListItem Value="0">Çalışmıyor</asp:ListItem>
                            <asp:ListItem Value="1">İşçi</asp:ListItem>
                            <asp:ListItem Value="2">Çiftçi</asp:ListItem>
                            <asp:ListItem Value="3">Emekli</asp:ListItem>
                            <asp:ListItem Value="4">Memur</asp:ListItem>
                        </asp:DropDownList><br />
                        <asp:Label ID="lbl_ann" Text="Net geliri" CssClass="lbl_meslek" runat="server"></asp:Label>
                        <asp:TextBox ID="txt_netgelir2" Text="0" CssClass="txt_netgelir" runat="server"></asp:TextBox>

                </div>
     </div>
            <div class="dorduncu_bolum">
                 <div class="ogr_is_durum">
                     <div class="ogr_is_baslik">
                       Öğrencinin İş Durumu <span class="red">*</span>
                    </div>

                 </div>
                <div class="burs_alma_durum">
                    <div class="burs_durum_baslik">
                        Öğrencinin Burs Alma Durumu <span class="red">*</span>
                    </div>
                </div>
                <div class="basari_durumu">
                    <div class="basari_baslik">
                        Öğrencinin Başarı Durumu <span class="red">*</span>
                    </div>
                </div>
           </div>
            <div class="dorduncu_bol_info">
                <div class="ogr_is_secenek">
                    <br />
                    <asp:RadioButton ID="rd_ogr_surekli" Text="Sürekli çalışıyor" CssClass="rd_calisma" GroupName="ogr_calisma" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_ogr_partt" Text="Part-Time çalışıyor" CssClass="rd_calisma" GroupName="ogr_calisma" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_ogr_calismiyor" Text="Çalışmıyor" CssClass="rd_calisma" GroupName="ogr_calisma" runat="server" />
                </div>
                <div class="ogr_burs_secenek">
                    <br />
                    <asp:RadioButton ID="rd_kyk" Text="KYK bursu" CssClass="rd_burs" GroupName="burs" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_ogrkredi" Text="Öğrenim Kredisi" CssClass="rd_burs" GroupName="burs" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_bursalmıyor" Text="Burs veya öğrenim kredisi almıyorum" CssClass="rd_burs" GroupName="burs" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_diger" Text="Diğer Burslar" CssClass="rd_burs" GroupName="burs" runat="server"/>
                </div>
                <div class="basari_secenek">
                    <br />
                    <asp:RadioButton ID="rd_yeniogr" Text="Yeni öğrenci" CssClass="rd_basari" GroupName="basari" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_2" Text="Not ortalaması 0-2.00" CssClass="rd_basari" GroupName="basari" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_3" Text="Not ortalaması 2.00-3.00" CssClass="rd_basari" GroupName="basari" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_4" Text="Not ortalaması 3.00 ve üzeri" CssClass="rd_basari" GroupName="basari" runat="server" />
                </div>
            </div>
            <div class="besinci_bolum">
                <div class="diger_baslik">
                    Diğer Bilgiler <span class="red">*</span>
                </div>
            </div>
            <div class="besinci_bol_info">
                <div class="info1"><br /><br />
                    <asp:Label ID="lbl_soru1" Text="Şehit veya Gazi çocuğu mu?" CssClass="lbl_sorular" runat="server" /><br /> <br />
                    <asp:RadioButton ID="rd_evet1" Text="Evet" CssClass="rd_evethayir" GroupName="rd_evethayir1" runat="server" /><span class="red">(Belgelemek kaydıyla)</span>
                    <asp:RadioButton ID="rd_hayir1" Text="Hayır" CssClass="rd_evethayir" GroupName="rd_evethayir1" runat="server" /><br /><br /><br />
                    <asp:Label ID="lbl_soru2" Text="Engeli olup olmadığı (En az %40)" CssClass="lbl_sorular" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_evet2" Text="Evet" CssClass="rd_evethayir" GroupName="rd_evethayir2" runat="server" /><span class="red">(Belgelemek kaydıyla)</span>
                    <asp:RadioButton ID="rd_hayir2" Text="Hayır" CssClass="rd_evethayir" GroupName="rd_evethayir2" runat="server" /><br /><br /><br />
                    <asp:Label ID="lbl_soru3" Text="Milli Sporcu musunuz?" CssClass="lbl_sorular" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_evet3" Text="Evet" CssClass="rd_evethayir" GroupName="rd_evethayir3" runat="server" /><span class="red">(Belgelemek kaydıyla)</span>
                    <asp:RadioButton ID="rd_hayir3" Text="Hayır" CssClass="rd_evethayir" GroupName="rd_evethayir3" runat="server" /><br /><br /><br />
                    <asp:Label ID="lbl_soru4" Text="Yetiştirme yurtlarında kaldınız mı?" CssClass="lbl_sorular" runat="server" /><br /><br />
                    <asp:RadioButton ID="rd_evet4" Text="Evet" CssClass="rd_evethayir" GroupName="rd_evethayir4" runat="server" /><span class="red">(Belgelemek kaydıyla)</span>
                    <asp:RadioButton ID="rd_hayir4" Text="Hayır" CssClass="rd_evethayir" GroupName="rd_evethayir4" runat="server" /><br />
              </div>
                <div class="info2"><br /><br /><br /><br /><br /><br /><br />
                    <asp:Label ID="aciklama_lbl" Text="Açıklama (Özel bir durumunuz varsa belirtiniz):" CssClass="lbl_ozeldurum" runat="server"></asp:Label> <br />
                    <asp:TextBox TextMode="MultiLine" CssClass="txt_ozeldurum" runat="server" />  
                </div>
               
                
                       

            </div>
            <div class="onaylama">
                <br />
                <asp:CheckBox ID="chcbox1" Text="Beyan ettiğim bilgilerin doğruluğunu ve bilgilerin yanlışlığından doğacak sorumluluğu kabul ediyorum." CssClass="chcbox1" runat="server" /><span class="red">*</span>
              
            </div>
           <div class="istenilen_belgeler">
                    <p class="belgeler"><br />
                        <b>İstenen Belgeler: E-devlet çıktıları geçerlidir.</b><br />
                        1. Doldurulan formun çıktısı.<br />
                        2. Aile Nüfus Kayıt Örneği<br />
                        3. Ailenin Maaş Bordrosu<br />
                        4. Öğrencinin çalışmadığına dair SGK Hizmet Dökümü
                        
                    </p>
                </div>
                <br />
                
                <asp:Button ID="btn_kaydet" Text="Başvuruyu Gönder" CssClass="btn_kayit" runat="server" OnClick="btn_kaydet_Click"  />
            
            
            

        </div>
         
        
    </form>
    <script src="scripts/jquery-3.5.1.min.js"></script>
    <script src="scripts/jquery.mask.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.tel-input').mask('(000) 000 00 00');
            $('.tc-input').mask('00000000000');
            $('.ogrno-input').mask('000000000');
        })
    </script>
</body>
</html>
