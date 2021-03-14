using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace S.Ü_Yemek_Bursu_Başvuru_Formu
{
    public class Points
    {
        public string Kira { get; set; }
        public string KendiEvi { get; set; }

        public string DevletYurdu { get; set; }
        public string AtaturkYurdu { get; set; }
        public string OzelYurt { get; set; }
        public string Ev { get; set; }
        public string AkrabaYanı { get; set; }
        public string AileYanı { get; set; }

        public string SağveBirlikte { get; set; }
        public string Ayrı { get; set; }
        public string BiriVefat { get; set; }
        public string İkisideVefat { get; set; }

        public string BirKardes { get; set; }
        public string İkiKardes { get; set; }
        public string UcKardes { get; set; }
        public string DortKardes { get; set; }
        public string BesKardes { get; set; }

        public string OkumuyorKardes { get; set; }
        public string İlkKardes { get; set; }
        public string LiseKardes { get; set; }
        public string UniKardes { get; set; }

        public string BCalısmıyor { get; set; }
        public string Bİsci { get; set; }
        public string BCiftci { get; set; }
        public string BEmekli { get; set; }
        public string BMemur { get; set; }

        public string ACalısmıyor { get; set; }
        public string Aİsci { get; set; }
        public string ACiftci { get; set; }
        public string AEmekli { get; set; }
        public string AMemur { get; set; }

        public string SıfırBin { get; set; }
        public string Binİkibin { get; set; }
        public string İkibinUcbin { get; set; }
        public string UcbinUzeri { get; set; }

        public string Calısıyor { get; set; }
        public string PartTime { get; set; }
        public string Calısmıyor { get; set; }
        
        public string KykBursu { get; set; }
        public string OgrenimKredisi { get; set; }
        public string Almıyor { get; set; }
        public string DigerBurslar { get; set; }

        public string YeniOgrenci { get; set; }
        public string Sıfırİki { get; set; }
        public string İkiSıfır { get; set; }
        public string UcUzeri { get; set; }
    }
}