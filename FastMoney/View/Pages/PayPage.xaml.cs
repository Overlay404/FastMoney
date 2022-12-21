using FastMoney.Model;
using FastMoney.ModelView;
using FastMoney.View.Windows;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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

namespace FastMoney.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для PayPage.xaml
    /// </summary>
    public partial class PayPage : Page
    {
        public static PayPage Instance;
        public PayPage()
        {
            InitializeComponent();
            Instance = this;
            CreditsListView.ItemsSource = App.db.Credit.Where(c => c.UserId == App.user.id).ToList();
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
            if((CreditsListView.SelectedItem as Credit).status == "Одобрен")
            {
                new ScheduleCreditPay((CreditsListView.SelectedItem as Credit).id).Show();
            }
        }
    }
}
