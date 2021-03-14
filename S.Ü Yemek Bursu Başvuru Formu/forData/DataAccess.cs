using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace S.Ü_Yemek_Bursu_Başvuru_Formu
{
    
    public class DataAccess
    {
        SqlConnection sqlBaglantisi = new SqlConnection(@"Data Source=DESKTOP-M6S1GQR;Initial Catalog=basvurudb;Integrated Security=True");

        /// <summary>
        /// Info Tablosuna Bir Kayıt girer.
        /// </summary>
        /// <param name="ınfo">Info türünde Bir Nesne.</param>
        /// <returns>ınfo</returns>
        public Info InsertInfo(Info ınfo)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("basvurudb")))
            {
                var p = new DynamicParameters();

                p.Add("@Adı", ınfo.Adı);
                p.Add("@Soyadı", ınfo.Soyadı);
                p.Add("@TcNo", ınfo.TcNo);
                p.Add("@OgrTelNo", ınfo.OgrTelNo);
                p.Add("@Fakulte", ınfo.Fakulte);
                p.Add("@Bolum", ınfo.Bolum);
                p.Add("@OgrencıNo", ınfo.OgrencıNo);
                p.Add("@DisiplinCezası", ınfo.DisiplinCezası);
                p.Add("@Aileİkamet", ınfo.Aileİkamet);
                p.Add("@Ogrİkamet", ınfo.Ogrİkamet);
                p.Add("@AnneBaba", ınfo.AnneBaba);
                p.Add("@KardesSayısı", ınfo.KardesSayısı);
                p.Add("@OkumayanKardes", ınfo.OkumayanKardes);
                p.Add("@İlkogretimKardes", ınfo.İlkogretimKardes);
                p.Add("@LiseKardes", ınfo.LiseKardes);
                p.Add("@UniKardes", ınfo.UniKardes);
                p.Add("@BabaDurum", ınfo.BabaDurum);
                p.Add("@BabaMeslek", ınfo.BabaMeslek);
                p.Add("@BabaGelir", ınfo.BabaGelir);
                p.Add("@AnneDurum", ınfo.AnneDurum);
                p.Add("@AnneMeslek", ınfo.AnneMeslek);
                p.Add("@AnneGelir", ınfo.AnneGelir);
                p.Add("@OgrMeslek", ınfo.OgrMeslek);
                p.Add("@OgrBursDurum", ınfo.OgrBursDurum);
                p.Add("@OgrPuanı", ınfo.OgrPuan);
                p.Add("@SehitGaziCocugu", ınfo.SehitGaziCocugu);
                p.Add("@EngellilikDurumu", ınfo.EngellilikDurumu);
                p.Add("@MilliSporcumu", ınfo.MilliSporcumu);
                p.Add("@YetistirmeYurdundaKalma", ınfo.YetistirmeYurdundaKalma);
                p.Add("@Puan", ınfo.Puan);

                p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);

                connection.Execute("dbo.spInfo_Insert", p, commandType: CommandType.StoredProcedure);

                ınfo.id = p.Get<int>("@id");


                return ınfo;
            }

        }

        /// <summary>
        /// Info Tablosundaki Her Kaydın Puanını Günceller.
        /// </summary>
        /// <param name="ınfos">Info Klasından Bir Liste</param>
        /// <returns>List of Info</returns>
        public List<Info> UpdateInfo(List<Info> ınfos)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("basvurudb")))
            {
                foreach (var a in ınfos)
                {
                    var p = new DynamicParameters();

                    p.Add("@Puan", a.Puan);
                    p.Add("@ID", a.id);
                    connection.Execute("dbo.spInfo_Update", p, commandType: CommandType.StoredProcedure);
                }
            }
            return ınfos;
        }
        
        /// <summary>
        /// Info Tablosundaki Bütün Kayıtları Info Tipinde Bir Listeye Atar. 
        /// </summary>
        /// <returns>List Of Info</returns>
        public List<Info> GetInfos()
        {
            List<Info> output;
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("basvurudb")))
            {
                output = connection.Query<Info>("dbo.spInfo_GetAll").ToList();

            }
            return output;

        }
        
        /// <summary>
        /// Puan Tablosundaki Puanları Günceller.
        /// </summary>
        /// <param name="points"></param>
        /// <returns>Point</returns>
        public Points InsertPoints(Points points)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("basvurudb")))
            {
                var p = new DynamicParameters();

                p.Add("@Kira", points.Kira);
                p.Add("@KendiEvi", points.KendiEvi);

                p.Add("@DevletYurdu", points.DevletYurdu);
                p.Add("@AtaturkYurdu", points.AtaturkYurdu); 
                p.Add("@OzelYurt", points.OzelYurt);
                p.Add("@Ev", points.Ev);
                p.Add("@AkrabaYanı", points.AkrabaYanı);
                p.Add("@AileYanı", points.AileYanı);

                p.Add("@SağveBirlikte", points.SağveBirlikte);
                p.Add("@Ayrı", points.Ayrı);
                p.Add("@BiriVefat", points.BiriVefat);
                p.Add("@İkisideVefat", points.İkisideVefat);

                p.Add("@BirKardes", points.BirKardes);
                p.Add("@İkiKardes", points.İkiKardes);
                p.Add("@UcKardes", points.UcKardes);
                p.Add("@DortKardes", points.DortKardes);
                p.Add("@BesKardes", points.BesKardes);

                p.Add("@OkumuyorKardes", points.OkumuyorKardes);
                p.Add("@İlkKardes", points.İlkKardes);
                p.Add("@LiseKardes", points.LiseKardes);
                p.Add("@UniKardes", points.UniKardes);

                p.Add("@BCalısmıyor", points.BCalısmıyor);
                p.Add("@Bİsci", points.Bİsci);
                p.Add("@BCiftci", points.BCiftci);
                p.Add("@BMemur", points.BMemur);
                p.Add("@BEmekli", points.BEmekli);

                p.Add("@ACalısmıyor", points.ACalısmıyor);
                p.Add("@Aİsci", points.Aİsci);
                p.Add("@ACiftci", points.ACiftci);
                p.Add("@AEmekli", points.AEmekli);
                p.Add("@AMemur", points.AMemur);

                p.Add("@SıfırBin", points.SıfırBin);
                p.Add("@Binİkibin", points.Binİkibin);
                p.Add("@İkibinUcbin", points.İkibinUcbin);
                p.Add("@UcbinUzeri", points.UcbinUzeri);

                p.Add("@Calısıyor", points.Calısıyor);
                p.Add("@PartTime", points.PartTime);
                p.Add("@Calısmıyor", points.Calısmıyor);

                p.Add("@KykBursu", points.KykBursu);
                p.Add("@OgrenimKredisi", points.OgrenimKredisi);
                p.Add("@Almıyor", points.Almıyor);
                p.Add("@DigerBurslar", points.DigerBurslar);

                p.Add("@YeniOgrenci", points.YeniOgrenci);
                p.Add("@Sıfırİki", points.Sıfırİki);
                p.Add("@İkiSıfır", points.İkiSıfır);
                p.Add("@UcUzeri", points.UcUzeri);
                p.Add("@ID", 1);
                connection.Execute("dbo.spPoints_InsertPoints", p, commandType: CommandType.StoredProcedure);

                return points;
            }
        }
        
        /// <summary>
        /// Puan Tablosundaki Puanları Getirir.
        /// </summary>
        /// <returns>Point</returns>
        public Points GetPoints()
        {
            Points output = new Points();

            sqlBaglantisi.Open();
            SqlCommand get = new SqlCommand("select * from Points where ID='1'",sqlBaglantisi);
            get.ExecuteNonQuery();
            SqlDataReader oku;
            oku = get.ExecuteReader();

            while (oku.Read())
            {
                output.Kira = oku["Kira"].ToString();
                output.KendiEvi = oku["KendiEvi"].ToString();
                output.DevletYurdu = oku["DevletYurdu"].ToString();
                output.AtaturkYurdu = oku["AtaturkYurdu"].ToString();
                output.OzelYurt = oku["OzelYurt"].ToString();
                output.Ev = oku["Ev"].ToString();
                output.AkrabaYanı = oku["AkrabaYanı"].ToString();
                output.AileYanı = oku["AileYanı"].ToString();
                output.SağveBirlikte = oku["SağveBirlikte"].ToString();
                output.Ayrı = oku["Ayrı"].ToString();
                output.BiriVefat = oku["BiriVefat"].ToString();
                output.İkisideVefat = oku["İkisideVefat"].ToString();
                output.BirKardes = oku["BirKardes"].ToString();
                output.İkiKardes = oku["İkiKardes"].ToString();
                output.UcKardes = oku["UcKardes"].ToString();
                output.DortKardes = oku["DortKardes"].ToString();
                output.BesKardes = oku["BesKardes"].ToString();
                output.OkumuyorKardes = oku["OkumuyorKardes"].ToString();
                output.İlkKardes = oku["İlkKardes"].ToString();
                output.LiseKardes = oku["LiseKardes"].ToString();
                output.UniKardes = oku["UniKardes"].ToString();
                output.BCalısmıyor = oku["BCalısmıyor"].ToString();
                output.Bİsci = oku["Bİsci"].ToString();
                output.BCiftci = oku["BCiftci"].ToString();
                output.BEmekli = oku["BEmekli"].ToString();
                output.BMemur = oku["BMemur"].ToString();
                output.ACalısmıyor = oku["ACalısmıyor"].ToString();
                output.Aİsci = oku["Aİsci"].ToString();
                output.ACiftci = oku["ACiftci"].ToString();
                output.AEmekli = oku["AEmekli"].ToString();
                output.AMemur = oku["AMemur"].ToString();
                output.SıfırBin = oku["SıfırBin"].ToString();
                output.Binİkibin = oku["Binİkibin"].ToString();
                output.İkibinUcbin = oku["İkibinUcbin"].ToString();
                output.UcbinUzeri = oku["UcbinUzeri"].ToString();
                output.Calısıyor = oku["Calısıyor"].ToString();
                output.PartTime = oku["PartTime"].ToString();
                output.Calısmıyor = oku["Calısmıyor"].ToString();
                output.KykBursu = oku["KykBursu"].ToString();
                output.OgrenimKredisi = oku["OgrenimKredisi"].ToString();
                output.Almıyor = oku["Almıyor"].ToString();
                output.DigerBurslar = oku["DigerBurslar"].ToString();
                output.YeniOgrenci = oku["YeniOgrenci"].ToString();
                output.Sıfırİki = oku["Sıfırİki"].ToString();
                output.İkiSıfır = oku["İkiSıfır"].ToString();
                output.UcUzeri = oku["UcUzeri"].ToString();
            }
            
            oku.Close();
            sqlBaglantisi.Close();

            return output;
        }
    }
}