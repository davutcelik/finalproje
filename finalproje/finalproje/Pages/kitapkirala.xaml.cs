using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace finalproje.Pages
{
    /// <summary>
    /// Interaction logic for kitapkirala.xaml
    /// </summary>
    public partial class kitapkirala : UserControl
    {
        MySqlConnection baglanti = new MySqlConnection("Server=localhost;Port=3306;Database=test;Uid=root;Pwd=;Convert Zero Datetime=True;Allow Zero Datetime=True;");
        public kitapkirala()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                baglanti.Open();
                MySqlCommand kirala = new MySqlCommand("INSERT INTO kiralik set kitapid='" + txtkitapid.Text + "',  kiralikgün='" + txtgün.Text + "', müsteriad='" + txtmusteriad.Text + "',müsterisoyad='" + txtmusterisoyad.Text + "',müsterino=" + txtmusterinumara.Text + ",müsteritc=" + txtmusteritc.Text + " ", baglanti);
                kirala.ExecuteNonQuery();
                kirala.Dispose();
              
                MessageBox.Show("kitap kiralama işlemi tamamlandı.");

                MySqlCommand asd2 = new MySqlCommand("delete  from kutuphane where sire ='" + txtkitapid.Text + "'", baglanti);
               
                asd2.ExecuteNonQuery();
                asd2.Dispose();
                baglanti.Close();
            }
            catch {
                MessageBox.Show("İSTENİLEN id'li KİTAP BAŞKA KULLANICIYA KİRALANMIŞ DURUMDADIR.");
                txtkitapid.Text = "";
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                MySqlConnection baglanti = new MySqlConnection("Server=localhost;Port=3306;Database=test;Uid=root;Pwd=;Convert Zero Datetime=True;Allow Zero Datetime=True;");
                baglanti.Open();
                MySqlCommand kitapsil = new MySqlCommand("delete from kiralik where kitapid='" + txtkitapsilid.Text + "'", baglanti);
                MySqlDataAdapter adabtor2 = new MySqlDataAdapter(kitapsil);
                kitapsil.ExecuteNonQuery();
                kitapsil.Dispose();

                baglanti.Close();
                MessageBox.Show(" kiralık kitap kütüphaneden silindi.");
            }
            catch
            {

                MessageBox.Show("hatalı id girdiniz.");
            }
        }
    }
}
