using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Windows;

namespace S.Ü_Yemek_Bursu_Başvuru_Formu
{
    public partial class BursKazananlar : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();
        SqlConnection sqlBaglantisi = new SqlConnection(@"Data Source=DESKTOP-M6S1GQR;Initial Catalog=basvurudb;Integrated Security=True");
        public string sqlString; 
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        /// <summary>
        /// İki GridView'e veriyi çekme.
        /// </summary>
        /// <param name="nobleRow">Asil Kazananların Sayısı</param>
        /// <param name="firstRow">Yedek Kazananların Başlayacağı Sıra</param>
        /// <param name="secondRow">Yedek Kazananların Biteceği Sıra</param>
        public void list(int nobleRow, int firstRow, int secondRow )
        {
            switch (nobleRow)
            {
                case 5:
                    sqlString = "SELECT TOP 5 Adı, Soyadı, TcNo, OgrencıNo, Puan FROM basvurudb.dbo.Info ORDER BY Puan DESC";
                    break;
                case 10:
                    sqlString = "SELECT TOP 10 Adı, Soyadı, TcNo, OgrencıNo, Puan FROM basvurudb.dbo.Info ORDER BY Puan DESC";
                    break;
                case 15:
                    sqlString = "SELECT TOP 15 Adı, Soyadı, TcNo, OgrencıNo, Puan FROM basvurudb.dbo.Info ORDER BY Puan DESC";
                    break;
                case 20:
                    sqlString = "SELECT TOP 20 Adı, Soyadı, TcNo, OgrencıNo, Puan FROM basvurudb.dbo.Info ORDER BY Puan DESC";
                    break;
                default:
                    break;
            }

            sqlBaglantisi.Open();
            SqlCommand veriGetir = new SqlCommand(sqlString, sqlBaglantisi);
            veriGetir.ExecuteNonQuery();
            SqlDataReader oku = veriGetir.ExecuteReader();
            GridView1.DataSource = oku;
            GridView1.DataBind();
            sqlBaglantisi.Close();

            sqlBaglantisi.Open();
            veriGetir = new SqlCommand("select tablo.* from	(Select ROW_NUMBER() over(order by Puan DESC) indexer,*from basvurudb.dbo.Info) tablo WHERE tablo.indexer BETWEEN '" + firstRow + "' AND '" + secondRow + "' ", sqlBaglantisi);
            veriGetir.ExecuteNonQuery();
            oku = veriGetir.ExecuteReader();
            GridView2.DataSource = oku;
            GridView2.DataBind();

            sqlBaglantisi.Close();
        }
        protected void linkbtn1_Click(object sender, EventArgs e)
        {
            list(5,6,10);
        }

        protected void linkbtn2_Click(object sender, EventArgs e)
        {
            list(10,11,20);
        }

        protected void linkbtn3_Click(object sender, EventArgs e)
        {
            list(15, 16, 30);
        }

        protected void linkbtn4_Click(object sender, EventArgs e)
        {
            list(20, 21, 40);
        }

        protected void btn_puanlar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PuanlarTablosu.aspx");
        }
    }
}