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
using MySql.Data;
using MySql.Data.MySqlClient;

namespace finalproje.Pages
{
    /// <summary>
    /// Interaction logic for kitapsil.xaml
    /// </summary>
    public partial class kitapsil : UserControl
    {
        public kitapsil()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MySqlConnection baglanti = new MySqlConnection("Server=localhost;Port=3306;Database=test;Uid=root;Pwd=;Convert Zero Datetime=True;Allow Zero Datetime=True;");
            baglanti.Open();

            MySqlCommand kitapsil = new MySqlCommand("delete from kütüphane where sire='" + sil.Text + "'", baglanti);
            MySqlDataAdapter adabtor2 = new MySqlDataAdapter(kitapsil);
            kitapsil.ExecuteNonQuery();
            kitapsil.Dispose();

            baglanti.Close();
            MessageBox.Show("sira numaralı kitap kütüphaneden silindi");

        }
    }
}
