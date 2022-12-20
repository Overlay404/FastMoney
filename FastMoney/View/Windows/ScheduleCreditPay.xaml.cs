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
    /// Логика взаимодействия для ScheduleCreditPay.xaml
    /// </summary>
    public partial class ScheduleCreditPay : Window
    {
        int idCredit;
        public static ScheduleCreditPay Instance;
        public ScheduleCreditPay(int IdCredit)
        {
            idCredit = IdCredit;
            InitializeComponent();
            Instance = this;
            Schedule.ItemsSource = App.db.Failure_Schedule.Where(f => f.CreditId == IdCredit).ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            new PayWindow(Schedule.SelectedItem as Failure_Schedule).Show();
        }
    }
}
