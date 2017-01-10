using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
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
    /// Interaction logic for girissayfasi.xaml
    /// </summary>
    public partial class girissayfasi : UserControl
    {
        MySqlConnection baglanti = new MySqlConnection("Server=localhost;Port=3306;Database=test;Uid=root;Pwd=;Convert Zero Datetime=True;Allow Zero Datetime=True;");

        public girissayfasi()
        {
            InitializeComponent();
            MySqlCommand goster = new MySqlCommand("Select sire,kitapadi,kitapyazari,kitaptürü,yayinevi,kitapcilt from kutuphane ", baglanti);
            MySqlDataAdapter ad = new MySqlDataAdapter(goster);
            DataTable ta = new DataTable();
            ad.Fill(ta);
            DATA.ItemsSource = ta.AsDataView();
        }

        private void kiralamasayfası_Click(object sender, RoutedEventArgs e)
        {
            FirstFloor.ModernUI.Presentation.LinkGroup menuler = new FirstFloor.ModernUI.Presentation.LinkGroup();
            FirstFloor.ModernUI.Presentation.Link menuekle = new FirstFloor.ModernUI.Presentation.Link();
            menuekle.DisplayName = "KİRALA ";
            menuekle.Source = new Uri("Pages/kitapkirala.xaml", UriKind.Relative);
            menuler.Links.Add(menuekle);

            FirstFloor.ModernUI.Presentation.Link ekle = new FirstFloor.ModernUI.Presentation.Link();
            ekle.DisplayName = " KİTAP EKLE";
            ekle.Source = new Uri("Pages/kitapekle.xaml", UriKind.Relative);
            menuler.Links.Add(ekle);

            FirstFloor.ModernUI.Presentation.Link sil = new FirstFloor.ModernUI.Presentation.Link();
            sil.DisplayName = " kitap SİL";
            sil.Source = new Uri("Pages/kitapsil.xaml", UriKind.Relative);
            menuler.Links.Add(sil);

            MainWindow ab = Application.Current.MainWindow as MainWindow;
            ab.MenuLinkGroups.Clear();
            ab.MenuLinkGroups.Add(menuler);
        }
    }
}
