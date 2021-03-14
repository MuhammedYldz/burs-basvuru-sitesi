using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S.Ü_Yemek_Bursu_Başvuru_Formu
{
    public partial class WebForm1 : System.Web.UI.Page 
    {
        DataAccess da = new DataAccess();
        Points points = new Points();
        
        public void ClearText()
        {
            txt_kira.Text = "";
            txt_kendi.Text = "";

            txt_devlet.Text = "";
            txt_ozel.Text = "";
            txt_ev.Text = "";
            txt_Ataturk.Text = "";
            txt_akraba.Text = "";
            txt_aile.Text = "";

            txt_sagbirlikte.Text = "";
            txt_ayri.Text = "";
            txt_1vefat.Text = "";
            txt_2vefat.Text = "";

            txt_1.Text = "";
            txt_2.Text = "";
            txt_3.Text = "";
            txt_4.Text = "";
            txt_5.Text = "";

            txt_okumuyor.Text = "";
            txt_lise.Text = "";
            txt_universite.Text = "";
            txt_ilkogretim.Text = "";

            txt_calismiyor.Text = "";
            txt_isci.Text = "";
            txt_ciftci.Text = "";
            txt_memur.Text = "";
            txt_emekli.Text = "";
            txt_calismiyor2.Text = "";

            txt_ciftci2.Text = "";
            txt_isci2.Text = "";
            txt_memur2.Text = "";
            txt_emekli2.Text = "";

            txt_1000.Text = "";
            txt_2000.Text = "";
            txt_3000.Text = "";
            txt_uxeri.Text = "";

            txt_20.Text = "";
            txt_30.Text = "";
            txt_yeniogr.Text = "";
            txt_30uzeri.Text = "";

            txt_burs.Text = "";
            txt_kredi.Text = "";
            txt_almiyorum.Text = "";
            txt_digerburs.Text = "";

            txt_surekli.Text = "";
            txt_parttime.Text = "";

            txt_ogrcalismiyor.Text = "";
        }
        /// <summary>
        /// Placeholder'ları Database'deki Puanlar İle Doldurur.
        /// </summary>
        public void FillHolder()
        {
            txt_kira.Attributes.Add("placeholder", points.Kira);
            txt_kendi.Attributes.Add("placeholder", points.KendiEvi);

            txt_devlet.Attributes.Add("placeholder", points.DevletYurdu);
            txt_Ataturk.Attributes.Add("placeholder", points.AtaturkYurdu);
            txt_ozel.Attributes.Add("placeholder", points.OzelYurt);
            txt_ev.Attributes.Add("placeholder", points.Ev);
            txt_akraba.Attributes.Add("placeholder", points.AkrabaYanı);
            txt_aile.Attributes.Add("placeholder", points.AileYanı);

            txt_sagbirlikte.Attributes.Add("placeholder", points.SağveBirlikte);
            txt_ayri.Attributes.Add("placeholder", points.Ayrı);
            txt_1vefat.Attributes.Add("placeholder", points.BiriVefat);
            txt_2vefat.Attributes.Add("placeholder", points.İkisideVefat);

            txt_1.Attributes.Add("placeholder", points.BirKardes);
            txt_2.Attributes.Add("placeholder", points.İkiKardes);
            txt_3.Attributes.Add("placeholder", points.UcKardes);
            txt_4.Attributes.Add("placeholder", points.DortKardes);
            txt_5.Attributes.Add("placeholder", points.BesKardes);

            txt_ilkogretim.Attributes.Add("placeholder", points.İlkKardes);
            txt_okumuyor.Attributes.Add("placeholder", points.OkumuyorKardes);
            txt_lise.Attributes.Add("placeholder", points.LiseKardes);
            txt_universite.Attributes.Add("placeholder", points.UniKardes);

            txt_calismiyor.Attributes.Add("placeholder", points.BCalısmıyor);
            txt_ciftci.Attributes.Add("placeholder", points.BCiftci);
            txt_isci.Attributes.Add("placeholder", points.Bİsci);
            txt_emekli.Attributes.Add("placeholder", points.BEmekli);
            txt_memur.Attributes.Add("placeholder", points.BMemur);

            txt_calismiyor2.Attributes.Add("placeholder", points.ACalısmıyor);
            txt_ciftci2.Attributes.Add("placeholder", points.ACiftci);
            txt_isci2.Attributes.Add("placeholder", points.Aİsci);
            txt_emekli2.Attributes.Add("placeholder", points.AEmekli);
            txt_memur2.Attributes.Add("placeholder", points.AMemur);

            txt_1000.Attributes.Add("placeholder", points.SıfırBin);
            txt_2000.Attributes.Add("placeholder", points.Binİkibin);
            txt_3000.Attributes.Add("placeholder", points.İkibinUcbin);
            txt_uxeri.Attributes.Add("placeholder", points.UcbinUzeri);

            txt_surekli.Attributes.Add("placeholder", points.Calısıyor);
            txt_parttime.Attributes.Add("placeholder", points.PartTime);
            txt_ogrcalismiyor.Attributes.Add("placeholder", points.Calısmıyor);

            txt_burs.Attributes.Add("placeholder", points.KykBursu);
            txt_kredi.Attributes.Add("placeholder", points.OgrenimKredisi);
            txt_almiyorum.Attributes.Add("placeholder", points.Almıyor);
            txt_digerburs.Attributes.Add("placeholder", points.DigerBurslar);

            txt_yeniogr.Attributes.Add("placeholder", points.YeniOgrenci);
            txt_20.Attributes.Add("placeholder", points.Sıfırİki);
            txt_30.Attributes.Add("placeholder", points.İkiSıfır);
            txt_30uzeri.Attributes.Add("placeholder", points.UcUzeri);
        }
        /// <summary>
        /// TextBox'da Yeni Puan Varsa Onu Alır.
        /// </summary>
        public void GetNewPoint()
        {
            if (txt_kira.Text != "")
                points.Kira = txt_kira.Text;
            if (txt_kendi.Text != "")
                points.KendiEvi = txt_kendi.Text;

            if (txt_devlet.Text != "")
                points.DevletYurdu = txt_devlet.Text;
            if (txt_ozel.Text != "")
                points.OzelYurt = txt_ozel.Text;
            if (txt_ev.Text != "")
                points.Ev = txt_ev.Text;
            if (txt_Ataturk.Text != "")
                points.AtaturkYurdu = txt_Ataturk.Text;
            if (txt_akraba.Text != "")
                points.AkrabaYanı = txt_akraba.Text;
            if (txt_aile.Text != "")
                points.AileYanı = txt_aile.Text;

            if (txt_sagbirlikte.Text != "")
                points.SağveBirlikte = txt_sagbirlikte.Text;
            if (txt_ayri.Text != "")
                points.Ayrı = txt_ayri.Text;
            if (txt_1vefat.Text != "")
                points.BiriVefat = txt_1vefat.Text;
            if (txt_2vefat.Text != "")
                points.İkisideVefat = txt_2vefat.Text;

            if (txt_1.Text != "")
                points.BirKardes = txt_1.Text;
            if (txt_2.Text != "")
                points.İkiKardes = txt_2.Text;
            if (txt_3.Text != "")
                points.UcKardes = txt_3.Text;
            if (txt_4.Text != "")
                points.DortKardes = txt_4.Text;
            if (txt_5.Text != "")
                points.BesKardes = txt_5.Text;

            if (txt_okumuyor.Text != "")
                points.OkumuyorKardes = txt_okumuyor.Text;
            if (txt_lise.Text != "")
                points.LiseKardes = txt_lise.Text;
            if (txt_universite.Text != "")
                points.UniKardes = txt_universite.Text;
            if (txt_ilkogretim.Text != "")
                points.İlkKardes = txt_ilkogretim.Text;

            if (txt_calismiyor.Text != "")
                points.BCalısmıyor = txt_calismiyor.Text;
            if (txt_isci.Text != "")
                points.Bİsci = txt_isci.Text;
            if (txt_ciftci.Text != "")
                points.BCiftci = txt_ciftci.Text;
            if (txt_memur.Text != "")
                points.BMemur = txt_memur.Text;
            if (txt_emekli.Text != "")
                points.BEmekli = txt_emekli.Text;

            if (txt_calismiyor2.Text != "")
                points.ACalısmıyor = txt_calismiyor2.Text;
            if (txt_ciftci2.Text != "")
                points.ACiftci = txt_ciftci2.Text;
            if (txt_isci2.Text != "")
                points.Aİsci = txt_isci2.Text;
            if (txt_memur2.Text != "")
                points.AMemur = txt_memur2.Text;
            if (txt_emekli2.Text != "")
                points.AEmekli = txt_emekli2.Text;

            if (txt_1000.Text != "")
                points.SıfırBin = txt_1000.Text;
            if (txt_2000.Text != "")
                points.Binİkibin = txt_2000.Text;
            if (txt_3000.Text != "")
                points.İkibinUcbin = txt_3000.Text;
            if (txt_uxeri.Text != "")
                points.UcbinUzeri = txt_uxeri.Text;

            if (txt_20.Text != "")
                points.Sıfırİki = txt_20.Text;
            if (txt_30.Text != "")
                points.İkiSıfır = txt_30.Text;
            if (txt_yeniogr.Text != "")
                points.YeniOgrenci = txt_yeniogr.Text;
            if (txt_30uzeri.Text != "")
                points.UcUzeri = txt_30uzeri.Text;

            if (txt_burs.Text != "")
                points.KykBursu = txt_burs.Text;
            if (txt_kredi.Text != "")
                points.OgrenimKredisi = txt_kredi.Text;
            if (txt_almiyorum.Text != "")
                points.Almıyor = txt_almiyorum.Text;
            if (txt_digerburs.Text != "")
                points.DigerBurslar = txt_digerburs.Text;

            if (txt_surekli.Text != "")
                points.Calısıyor = txt_surekli.Text;
            if (txt_parttime.Text != "")
                points.PartTime = txt_parttime.Text;
            if (txt_ogrcalismiyor.Text != "")
                points.Calısmıyor = txt_ogrcalismiyor.Text;
        }
        /// <summary>
        /// Her bir kaydın puanını hesaplıyor.
        /// </summary>
        /// <param name="ınfos">Kayıtların Listesini Taşıyor.</param>
        public void Update(List<Info> ınfos)
        {
            foreach (var p in ınfos)
            {
                int yeniPuan;

                yeniPuan = p.Aileİkamet == "Kira" ? Convert.ToInt16(points.Kira) : Convert.ToInt16(points.KendiEvi);

                yeniPuan += p.Ogrİkamet == "Devlet Yurdu" ? Convert.ToInt16(points.DevletYurdu) : (p.Ogrİkamet == "Özel Yurt" ? Convert.ToInt16(points.DevletYurdu) : (p.Ogrİkamet == "Atatürk Yurdu" ? Convert.ToInt16(points.AtaturkYurdu) : (p.Ogrİkamet == "Ev" ? Convert.ToInt16(points.Ev) : (p.Ogrİkamet == "Akraba Yanı" ? Convert.ToInt16(points.AkrabaYanı) : Convert.ToInt16(points.AkrabaYanı)))));

                yeniPuan += p.AnneBaba == "Sağ ve Birlikte" ? Convert.ToInt16(points.SağveBirlikte) : (p.AnneBaba == "Ayrı" ? Convert.ToInt16(points.Ayrı) : (p.AnneBaba == "Biri Vefat" ? Convert.ToInt16(points.BiriVefat) : Convert.ToInt16(points.İkisideVefat)));

                yeniPuan += p.KardesSayısı == "1" ? Convert.ToInt16(points.BirKardes) : (p.KardesSayısı == "2" ? Convert.ToInt16(points.İkiKardes) : (p.KardesSayısı == "3" ? Convert.ToInt16(points.UcKardes) : (p.KardesSayısı == "4" ? Convert.ToInt16(points.DortKardes) : Convert.ToInt16(points.BesKardes))));

                int aileGelir = Convert.ToInt32(p.BabaGelir) + Convert.ToInt32(p.AnneGelir);
                yeniPuan += aileGelir < 1000 ? Convert.ToInt16(points.SıfırBin) : (aileGelir < 2000 ? Convert.ToInt16(points.Binİkibin) : (aileGelir < 3000 ? Convert.ToInt16(points.İkibinUcbin) : Convert.ToInt16(points.UcbinUzeri)));

                if (p.İlkogretimKardes != "")
                {
                    for (int i = 0; i < Convert.ToInt16(p.İlkogretimKardes); i++)
                    {
                        yeniPuan += Convert.ToInt16(points.İlkKardes);
                    }
                }

                if (p.LiseKardes != "")
                {
                    for (int i = 0; i < Convert.ToInt16(p.LiseKardes); i++)
                    {
                        yeniPuan += Convert.ToInt16(points.LiseKardes);
                    }
                }

                if (p.UniKardes != "")
                {

                    for (int i = 0; i < Convert.ToInt16(p.UniKardes); i++)
                    {
                        yeniPuan += Convert.ToInt16(points.UniKardes);
                    }
                }

                if (p.OkumayanKardes != "")
                {
                    for (int i = 0; i < Convert.ToInt16(p.OkumayanKardes); i++)
                    {
                        yeniPuan += Convert.ToInt16(points.OkumuyorKardes);
                    }

                }

                yeniPuan += p.BabaMeslek == "Çalışmıyor" ? Convert.ToInt16(points.BCalısmıyor) : (p.BabaMeslek == "İşçi" ? Convert.ToInt16(points.Bİsci) : (p.BabaMeslek == "Çiftçi" ? Convert.ToInt16(points.BCiftci) : (p.BabaMeslek == "Memur" ? Convert.ToInt16(points.BMemur) : Convert.ToInt16(points.BEmekli))));


                yeniPuan += p.OgrMeslek == "Çalışmıyor" ? Convert.ToInt16(points.Calısmıyor) : (p.OgrMeslek == "Part-Time" ? Convert.ToInt16(points.PartTime) : Convert.ToInt16(points.Calısıyor));

                yeniPuan += p.OgrBursDurum == "KYK Bursu" ? Convert.ToInt16(points.KykBursu) : (p.OgrBursDurum == "Öğrenim Kredisi" ? Convert.ToInt16(points.OgrenimKredisi) : (p.OgrBursDurum == "Burs Almıyorum" ? Convert.ToInt16(points.Almıyor) : Convert.ToInt16(points.DigerBurslar)));

                yeniPuan += p.OgrPuan == "Yeni Öğrenci" ? Convert.ToInt16(points.YeniOgrenci) : (p.OgrPuan == "0-2.00" ? Convert.ToInt16(points.Sıfırİki) : (p.OgrPuan == "2.00-3.00" ? Convert.ToInt16(points.İkiSıfır) : Convert.ToInt16(points.UcUzeri)));

                p.Puan = yeniPuan;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            points = da.GetPoints();

            FillHolder();
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            GetNewPoint();

            da.InsertPoints(points);
            
            Page.Response.Redirect(Page.Request.Url.ToString(), false);

            ClearText();

            List<Info> ınfos= da.GetInfos();

            Update(ınfos);
            
            da.UpdateInfo(ınfos);
        }

        protected void btn_Listele_Click(object sender, EventArgs e)
        {
        }
    }
}