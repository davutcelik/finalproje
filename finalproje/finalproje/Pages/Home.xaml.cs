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
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace finalproje.Pages
{
    /// <summary>
    /// Interaction logic for Home.xaml
    /// </summary>
    public partial class Home : UserControl
    {
        public Home()
        {
            InitializeComponent();
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (txtkad.Text == "DAVUT" && txtsifre.Password == "004")
            {
                FirstFloor.ModernUI.Presentation.LinkGroup menuler = new FirstFloor.ModernUI.Presentation.LinkGroup();

                FirstFloor.ModernUI.Presentation.Link menuekle = new FirstFloor.ModernUI.Presentation.Link();
                FirstFloor.ModernUI.Presentation.Link ekle = new FirstFloor.ModernUI.Presentation.Link();
                FirstFloor.ModernUI.Presentation.Link sil = new FirstFloor.ModernUI.Presentation.Link();

                menuekle.DisplayName = "KİTAP KİRALAMA SAYFASI";
                ekle.DisplayName = " KİTAP EKLEME SAYFASI";
                sil.DisplayName = " KİTAP SİLME SAYFASI";


                menuekle.Source = new Uri("Pages/girissayfasi.xaml", UriKind.Relative);
                ekle.Source = new Uri("Pages/kitapekle.xaml", UriKind.Relative);
                sil.Source = new Uri("Pages/kitapsil.xaml", UriKind.Relative);

                menuler.Links.Add(menuekle);
                menuler.Links.Add(ekle);
                menuler.Links.Add(sil);

                MainWindow ab = Application.Current.MainWindow as MainWindow;
                ab.MenuLinkGroups.Clear();
                ab.MenuLinkGroups.Add(menuler);
            }
            else
            {
                MessageBox.Show("Hatalı Giriş Denemesi");
            }
        }
    }
    }

