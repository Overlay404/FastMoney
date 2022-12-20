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
using System.Windows.Shapes;

namespace FastMoney.View.Windows
{
    /// <summary>
    /// Логика взаимодействия для CardSelection.xaml
    /// </summary>
    public partial class CardSelection : Window
    {
        public CardSelection()
        {
            InitializeComponent();
            CardListView.ItemsSource = App.db.Card.Where(c => c.UserId == App.user.id).ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (CardListView.SelectedItem == null) return;
            App.card = CardListView.SelectedItem as Card;
            Close();
        }
    }
}
