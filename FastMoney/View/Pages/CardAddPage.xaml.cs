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
    /// Логика взаимодействия для CardAddPage.xaml
    /// </summary>
    public partial class CardAddPage : Page
    {
        public CardAddPage()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (number.Text.Trim().All(n => char.IsDigit(n) == false)) return;
            if(number.Text.Trim().Count() != 16) return;

            App.db.Card.Add(new Model.Card
            {
                 number = number.Text.Trim(),
                 amount = 0,
                 UserId = App.user.id,
            });
            App.db.SaveChanges();
            MessageBox.Show($"Вы добавили новую карту с номером {number.Text.Trim()}");
            MainWindow.Instanse.walletList.ItemsSource = App.db.Card.Where(c => c.UserId == App.user.id).ToList();
        }

        private void number_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (number.Text.Trim().Count() > 16) number.Text = number.Text.Trim().Substring(0, number.Text.Count() - 1);
        }
    }
}
