using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using OpenHtmlToPdf;
using TheArtOfDev.HtmlRenderer.PdfSharp;


namespace S.Ü_Yemek_Bursu_Başvuru_Formu
{
    public partial class Default : System.Web.UI.Page
    {
        DataAccess db = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        /// <summary>
        /// Textlerin Boş Olup Olmadığını Sorgular
        /// </summary>
        /// <returns></returns>
        public bool IsItEmpty ()
        {
            if (txtadi.Text != "" && txtsoyadi.Text != "" && txtfak.Text != "" && txtbolum.Text != "" && txttc.Text != "" && txtogrno.Text != "" && txttel.Text != "" &&
                txtkardes.Text != "" && dc_durum != "" && ai_durum != "" && oi_durum != "" && ab_durum != "" && a_durum != "" && b_durum != "" && ois_durum != "" &&
                ob_durum != "" && op_durum != "" && sg_durum != "" && e_durum != "" && ms_durum != "" && yy_durum != "" && chcbox1.Checked != false)
            {
                return true;
            }
            else
                return false;
        }
        /// <summary>
        /// Durum Nesneleri.
        /// </summary>
        public string dc_durum, ai_durum, oi_durum, ab_durum, a_durum,
            b_durum, ois_durum, ob_durum, op_durum,
            sg_durum, e_durum, ms_durum, yy_durum;
        /// <summary>
        /// Girilen Bilgileri Public Nesnelere Aktarma.
        /// </summary>
        public void GetStatus()
        {
            op_durum = rd_yeniogr.Checked == true ? "Yeni Öğrenci" : (rd_2.Checked == true ? "0-2.00" : (rd_3.Checked == true ? "2.00-3.00" : "3.00+"));

            ob_durum = rd_kyk.Checked == true ? "KYK Bursu" : (rd_ogrkredi.Checked == true ? "Öğrenim Kredisi" : (rd_bursalmıyor.Checked == true ? "Burs Almıyorum" : "Diğer Burslar"));

            ois_durum = rd_ogr_surekli.Checked == true ? "Sürekli Çalışıyor" : (rd_ogr_partt.Checked == true ? "Part-Time" : "Çalışmıyor");

            ab_durum = anne_baba_sag.Checked == true ? "Sağ ve Birlikte" : (anne_baba_ayri.Checked == true ? "Ayrı" : (anne_baba_birivefat.Checked == true ? "Biri Vefat" : "İkisi Vefat"));

            oi_durum = dvlt_yurdu.Checked == true ? "Devlet Yurdu" : (ata_yurdu.Checked == true ? "Atatürk Yurdu" : (ozel_yurt.Checked == true ? "Özel Yurt" : (ev.Checked == true ? "Ev" : (akraba_yanı.Checked == true ? "Akraba Yanı" : "Aile Yanı"))));

            dc_durum = rd_var.Checked == true ? "Var" : "Yok";

            ai_durum = rd_kira.Checked == true ? "Kira" : "Kendi Evi";

            b_durum = calisma_radio1.Checked == true ? "Çalışıyor" : "Çalışmıyor";

            a_durum = calisma_radio3.Checked == true ? "Çalışıyor" : "Çalışmıyor";

            sg_durum = rd_evet1.Checked == true ? "Evet" : "Hayır";

            e_durum = rd_evet2.Checked == true ? "Evet" : "Hayır";

            ms_durum = rd_evet3.Checked == true ? "Evet" : "Hayır";

            yy_durum = rd_evet4.Checked == true ? "Evet" : "Hayır";
        }
        /// <summary>
        /// Girilen Bilgileri Info Modeli İle Eşitleme.
        /// </summary>
        /// <returns></returns>
        public Info SynchInfo()
        { 
            Info newInfo = new Info {Adı=txtadi.Text, Soyadı = txtsoyadi.Text, TcNo = txttc.Text, Fakulte = txtfak.Text,
                            OgrTelNo =txttel.Text, Bolum = txtbolum.Text, OgrencıNo = txtogrno.Text, DisiplinCezası = dc_durum, Aileİkamet = ai_durum,
                            Ogrİkamet = oi_durum, AnneBaba = ab_durum, KardesSayısı = txtkardes.Text, 
                            OkumayanKardes = okumuyor.Text, İlkogretimKardes = ilkogretim.Text, LiseKardes = lise.Text , 
                            UniKardes = universite.Text, BabaDurum = b_durum, BabaMeslek = drpmeslek.SelectedItem.ToString(), BabaGelir = txt_netgelir1.Text,
                            AnneDurum = a_durum, AnneMeslek = DropDownList1.SelectedItem.ToString(),AnneGelir = txt_netgelir2.Text, OgrMeslek = ois_durum,
                            OgrBursDurum = ob_durum, OgrPuan = op_durum, SehitGaziCocugu = sg_durum, EngellilikDurumu = e_durum,
                            MilliSporcumu = ms_durum, YetistirmeYurdundaKalma = yy_durum };
            Points points = db.GetPoints();
            
            int aileGelir = Convert.ToInt16(txt_netgelir1.Text) + Convert.ToInt16(txt_netgelir2.Text);
            int newPoint;

            newPoint = newInfo.Aileİkamet == "Kira" ? Convert.ToInt16(points.Kira) : Convert.ToInt16(points.KendiEvi);
            newPoint += newInfo.Ogrİkamet == "Devlet Yurdu" ? Convert.ToInt16(points.DevletYurdu) : (newInfo.Ogrİkamet == "Özel Yurt" ? Convert.ToInt16(points.DevletYurdu) : (newInfo.Ogrİkamet == "Atatürk Yurdu" ? Convert.ToInt16(points.AtaturkYurdu) : (newInfo.Ogrİkamet == "Ev" ? Convert.ToInt16(points.Ev) : (newInfo.Ogrİkamet == "Akraba Yanı" ? Convert.ToInt16(points.AkrabaYanı) : Convert.ToInt16(points.AkrabaYanı)))));
            newPoint += newInfo.AnneBaba == "Sağ ve Birlikte" ? Convert.ToInt16(points.SağveBirlikte) : (newInfo.AnneBaba == "Ayrı" ? Convert.ToInt16(points.Ayrı) : (newInfo.AnneBaba == "Biri Vefat" ? Convert.ToInt16(points.BiriVefat) : Convert.ToInt16(points.İkisideVefat)));
            newPoint += newInfo.KardesSayısı == "1" ? Convert.ToInt16(points.BirKardes) : (newInfo.KardesSayısı == "2" ? Convert.ToInt16(points.İkiKardes) : (newInfo.KardesSayısı == "3" ? Convert.ToInt16(points.UcKardes) : (newInfo.KardesSayısı == "4" ? Convert.ToInt16(points.DortKardes) : Convert.ToInt16(points.BesKardes))));
            if (newInfo.İlkogretimKardes != "")
            {
                for (int i = 0; i < Convert.ToInt16(newInfo.İlkogretimKardes); i++)
                {
                    newPoint += Convert.ToInt16(points.İlkKardes);
                }
            }
            if (newInfo.LiseKardes != "")
            {
                for (int i = 0; i < Convert.ToInt16(newInfo.LiseKardes); i++)
                {
                    newPoint += Convert.ToInt16(points.LiseKardes);
                }
            }
            if (newInfo.OkumayanKardes != "")
            {
                for (int i = 0; i < Convert.ToInt16(newInfo.OkumayanKardes); i++)
                {
                    newPoint += Convert.ToInt16(points.OkumuyorKardes);
                }

            }
            newPoint += newInfo.BabaMeslek == "Çalışmıyor" ? Convert.ToInt16(points.BCalısmıyor) : (newInfo.BabaMeslek == "İşçi" ? Convert.ToInt16(points.Bİsci) : (newInfo.BabaMeslek == "Çiftçi" ? Convert.ToInt16(points.BCiftci) : (newInfo.BabaMeslek == "Memur" ? Convert.ToInt16(points.BMemur) : Convert.ToInt16(points.BEmekli))));
            newPoint += aileGelir < 1000 ? Convert.ToInt16(points.SıfırBin) : (aileGelir < 2000 ? Convert.ToInt16(points.Binİkibin) : (aileGelir < 3000 ? Convert.ToInt16(points.İkibinUcbin) : Convert.ToInt16(points.UcbinUzeri)));
            newPoint += newInfo.OgrMeslek == "Çalışmıyor" ? Convert.ToInt16(points.Calısmıyor) : (newInfo.OgrMeslek == "Part-Time" ? Convert.ToInt16(points.PartTime) : Convert.ToInt16(points.Calısıyor));
            newPoint += newInfo.OgrBursDurum == "KYK Bursu" ? Convert.ToInt16(points.KykBursu) : (newInfo.OgrBursDurum == "Öğrenim Kredisi" ? Convert.ToInt16(points.OgrenimKredisi) : (newInfo.OgrBursDurum == "Burs Almıyorum" ? Convert.ToInt16(points.Almıyor) : Convert.ToInt16(points.DigerBurslar)));
            newPoint += newInfo.OgrPuan == "Yeni Öğrenci" ? Convert.ToInt16(points.YeniOgrenci) : (newInfo.OgrPuan == "0-2.00" ? Convert.ToInt16(points.Sıfırİki) : (newInfo.OgrPuan == "2.00-3.00" ? Convert.ToInt16(points.İkiSıfır) : Convert.ToInt16(points.UcUzeri)));

            newInfo.Puan = newPoint;

            return newInfo;
        }
        public void ClearText()
        {
            txtadi.Text = "";
            txtsoyadi.Text = "";
            txttc.Text = "";
            txtogrno.Text = "";
            txttel.Text = "";
            txtfak.Text = "";
            txtbolum.Text = "";
            txtkardes.Text = "";
            okumuyor.Text = "";
            ilkogretim.Text = "";
            lise.Text = "";
            universite.Text = "";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btn_yazdir_Click(object sender, EventArgs e)
        {
            
            /*
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Reservation.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            this.Page.RenderControl(hw);//Hata oluyor detaylı sayfalarda
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            */
        }
        public string full_name;
        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            GetStatus();
            if (IsItEmpty()==true)
            {
                Info newInfo = SynchInfo();
                if (btn_fotograf.HasFile)
                {
                        string filename = txttc.Text;
                        if (btn_fotograf.HasFile)
                        {
                            string type = Path.GetExtension(btn_fotograf.FileName); // .jpg, .doc, .pdf şeklinde dosya uzantısı döner. 
                            full_name = filename + type; //Rastgele oluşturduğumuz isimle dosya tipini birleştiriyoruz. 
                            btn_fotograf.SaveAs(Server.MapPath("~/images/" + full_name)); //FileUpload'ın SaveAs methoduyla dosyanın yeni ismini verip kaydediyoruz. 

                            db.InsertInfo(newInfo);

                            ClearText();

                            Response.Write("<script>confirm('Başarıyla Kaydedildi!')</script>");
                        }

                        else
                        {
                            //durum.Visible = true;
                            //durum.Text = "Sadece JPEG formatı kabul edilir.";
                        }
                }
                else
                {
                    Response.Write("<script>confirm('Lütfen Profil Fotoğrafı Yükleyin')</script>");
                }
            }
            else
            {
                Response.Write("<script>confirm('Lütfen Bütün Alanları Doldurunuz!')</script>");
            }
        }
    }
}