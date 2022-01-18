using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjesi
{
    public partial class Default : System.Web.UI.Page
    {
        UrunlerEntities baglanti = new UrunlerEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            Urunler urunEkle = new Urunler();

            urunEkle.UrunKodu = int.Parse(tbxUrunKodu.Text);
            urunEkle.UrunAdi = tbxUrunAdi.Text;
            urunEkle.BirimFiyat = int.Parse(tbxBirimFiyat.Text);
            urunEkle.StokMiktari = int.Parse(tbxStokMiktari.Text);
            urunEkle.UrunAciklama = tbxUrunAciklamasi.Text;

            try
            {
                baglanti.Urunler.Add(urunEkle);
                baglanti.SaveChanges();
                LblSonuc.Text = "Kayıt Başarıyla Gerçekleşti";
            }
            catch(Exception)
            {
                LblSonuc.Text = "Kayıt Gerçekleştirilemedi";
            }

        }

        protected void btnlistele_Click(object sender, EventArgs e)
        {
            baglanti.Urunler.Load();
            GridView1.DataSource = baglanti.Urunler.Local;
            GridView1.DataBind();
        }

        protected void btnsil_Click(object sender, EventArgs e)
        {
            int urunKodu = int.Parse(tbxUrunKodu.Text);
            var sorgu = (from kayit in baglanti.Urunler
                        where kayit.UrunKodu == urunKodu
                        select kayit).ToList();

            if (sorgu.Count == 1)
            {
                baglanti.Urunler.Remove(sorgu[0]);
                baglanti.SaveChanges();
                LblSonuc.Text = "Kayıt Başarıyla Silindi";
            }
            else
            {
                LblSonuc.Text = "Kayıt Bulunamadı";
            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            int urunKodu = Convert.ToInt32(tbxUrunKodu.Text);
            var sorgu = (from kayit in baglanti.Urunler
                         where kayit.UrunKodu == urunKodu
                         select kayit).ToList();

            if (sorgu.Count == 1)
            {
                sorgu[0].UrunAdi = tbxUrunAdi.Text;
                sorgu[0].BirimFiyat = int.Parse(tbxBirimFiyat.Text);
                sorgu[0].StokMiktari = int.Parse(tbxStokMiktari.Text);
                sorgu[0].UrunAciklama = tbxUrunAciklamasi.Text;
                baglanti.SaveChanges();
                LblSonuc.Text = "Kayıt Başarıyla Güncellendi";
            }
            else
            {
                LblSonuc.Text = "Güncelleme Hatası!";
            }
        }
    }
}