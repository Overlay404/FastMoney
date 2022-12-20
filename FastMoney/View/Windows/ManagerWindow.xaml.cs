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
    /// Логика взаимодействия для ManagerWindow.xaml
    /// </summary>
    public partial class ManagerWindow : Window
    {
        public static ManagerWindow Instance { get; set; }
        public ManagerWindow()
        {
            InitializeComponent();
            Instance = this;
        }

        private void ImageAwesome_MouseUp(object sender, MouseButtonEventArgs e)
        {
            ChangedDataBase("Одобрен");
            App.credit.Card.amount += App.credit.totalAmount;
            App.db.Operation.Add(new Operation
            {
                amount = App.credit.totalAmount,
                date = DateTime.Today,
                icon = "Solid_SackDollar",
                UserId = App.credit.UserId,
                type = "Получение кредита",
                operation1 = $"Получен кредит на сумму {App.credit.totalAmount}"
            });
            App.db.SaveChanges();
            ListRequest.ItemsSource = App.db.Request.Where(r => r.status == true).ToList();
        }

        private void ImageAwesome_MouseUp_1(object sender, MouseButtonEventArgs e)
        {
            ChangedDataBase("Не одобрен");
            ListRequest.ItemsSource = App.db.Request.Where(r => r.status == true).ToList();
        }
        private void ChangedDataBase(string text)
        {
            var request = ListRequest.SelectedItem as Request;
            request.status = false;
            App.credit = App.db.Credit.Where(c => c.id == request.CreditId).FirstOrDefault();
            App.credit.status = text;
        }
    }
}
