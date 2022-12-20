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
    /// Логика взаимодействия для PayWindow.xaml
    /// </summary>
    public partial class PayWindow : Window
    {
        public static PayWindow Instance;
        Failure_Schedule failure_Schedule1;
        public PayWindow(Failure_Schedule failure_Schedule)
        {
            InitializeComponent();
            Instance = this;
            failure_Schedule1 = failure_Schedule;
            CardListView.ItemsSource = App.user.Card.ToList();
            SumAmount.Text += failure_Schedule.amount;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (CardListView.SelectedItem == null) return;
            if ((CardListView.SelectedItem as Card).amount - failure_Schedule1.amount <= 0)
            {
                MessageBox.Show("Недостаточно средств");
                return;
            }

            App.failure_Schedule = failure_Schedule1;
            App.failure_Schedule.status = true;
            App.user.Card.Where(c => c == CardListView.SelectedItem as Card).FirstOrDefault().amount -= failure_Schedule1.amount;
            App.db.Operation.Add(new Operation
            {
                amount = -App.failure_Schedule.amount,
                date = DateTime.Today,
                icon = "Solid_HandHoldingDollar",
                UserId = App.user.id,
                type = "Оплата кредита",
                operation1 = $"Оплата кредита на сумму {App.db.Credit.Where(c => c.id == failure_Schedule1.CreditId).Select(c => c.totalAmount).FirstOrDefault()}"
            });
            App.db.SaveChanges();
            ScheduleCreditPay.Instance.Schedule.ItemsSource = App.db.Failure_Schedule.Where(f => f.CreditId == App.failure_Schedule.CreditId).ToList();
            Close();
        }
    }
}
