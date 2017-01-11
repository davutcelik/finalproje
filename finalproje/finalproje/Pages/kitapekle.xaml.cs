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
    /// Interaction logic for kitapekle.xaml
    /// </summary>
    public partial class kitapekle : UserControl
    {
        MySqlConnection baglanti = new MySqlConnection("Server=localhost;Port=3306;Database=test;Uid=root;Pwd=;Convert Zero Datetime=True;Allow Zero Datetime=True;");
        public kitapekle()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            
            baglanti.Open();
            MySqlCommand kitapekle = new MySqlCommand("INSERT INTO kutuphane(kitapadi,kitapyazari,kitaptürü,yayinevi,kitapcilt,yayintarihi,sire) values('" + txtad.Text + "','" + txtyazar.Text + "','" + txttür.Text + "','" + txtyayinevi.Text + "','" + txtcilt.Text + "','" + txttarih.Text + "'," + txtkitapsire.Text + ")", baglanti);
            kitapekle.ExecuteNonQuery();
            kitapekle.Dispose();
            baglanti.Close();
            MessageBox.Show("kütüphaneye kitap ekleme yapıldı");
            }
 

        }
    }

