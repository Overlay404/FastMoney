using FastMoney.Model;
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

namespace FastMoney.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для TransferPage.xaml
    /// </summary>
    public partial class TransferPage : Page
    {
        public TransferPage()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(!(amount.Text.All(a => char.IsDigit(a)) || number.Text.All(a => char.IsDigit(a)))) return;
            if (Convert.ToInt32(amount.Text.Trim()) == 0) return;
            int idUser = App.user.id;
            App.user = App.db.User.Where(u => u.phone == number.Text.Trim() && u.id != idUser).Select(u => u).FirstOrDefault();
            if (App.user == null)
            {
                App.user = App.db.User.Where(u => u.id == idUser).Select(u => u).FirstOrDefault();
                return;
            }
            App.user.Card.FirstOrDefault().amount += Convert.ToInt32(amount.Text.Trim());
            MessageBox.Show($"Перевод для {App.user.FullName} на сумму {Convert.ToInt32(amount.Text.Trim())} доставлен");
            App.db.Operation.Add(new Operation
            {
                amount = -Convert.ToInt32(amount.Text.Trim()),
                date = DateTime.Today,
                icon = "Solid_RightLeft",
                UserId = idUser,
                type = "Перевод средств",
                operation1 = $"{App.user.FullName}"
            });
            App.db.Operation.Add(new Operation
            {
                amount = Convert.ToInt32(amount.Text.Trim()),
                date = DateTime.Today,
                icon = "Solid_RightLeft",
                UserId = App.user.id,
                type = "Перевод средств",
                operation1 = $"{App.db.User.Where(u => u.id == idUser).FirstOrDefault().FullName}"
            });
            App.user = App.db.User.Where(u => u.id == idUser).Select(u => u).FirstOrDefault();
            (Card.SelectedItem as Card).amount -= Convert.ToInt32(amount.Text.Trim());
            Card.ItemsSource = App.db.Card.Where(c => c.UserId == App.user.id).ToList();
            Card.SelectedIndex = 0;
            App.db.SaveChanges();
            MainWindow.Instanse.walletList.ItemsSource = App.db.Card.Where(c => c.UserId == App.user.id).ToList();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Card.ItemsSource = App.user.Card.ToList();
        }
    }
}
