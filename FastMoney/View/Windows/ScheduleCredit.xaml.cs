using FastMoney.Classes;
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
    /// Логика взаимодействия для Schedule.xaml
    /// </summary>
    public partial class ScheduleCredit : Window
    {
        List<CreditScheduleClass> creditScheduleClasses = new List<CreditScheduleClass>();
        double TotalSum;
        double PartialSum;
        readonly int Years;
        readonly int type;
        readonly double rate;
        double TotalAmount;
        bool IsSave;
        Card card;


        public ScheduleCredit(Object credit)
        {
            InitializeComponent();
            Years = (credit as CreditClass).Years;
            TotalSum = (credit as CreditClass).TotalSum * (credit as CreditClass).Rate + (credit as CreditClass).TotalSum;
            TotalAmount = (credit as CreditClass).TotalSum;
            PartialSum = (credit as CreditClass).PartialSum;
            type = (credit as CreditClass).Type;
            rate = (credit as CreditClass).Rate;
            IsSave = (credit as CreditClass).IsSave;
            card = (credit as CreditClass).card;
        }

        private void DataGrid_Loaded(object sender, RoutedEventArgs e)
        {
            if (IsSave)
            {
                App.db.Credit.Add(new Credit
                {
                    totalAmount = Convert.ToInt32(TotalAmount),
                    dateOfIssue = DateTime.Today,
                    expirationDate = DateTime.Today.AddMonths(Years * 12),
                    rate = Convert.ToInt32(rate * 100),
                    UserId = App.user.id,
                    type = type == 1 ? "Дифференцированный" : "Ауинтентный",
                    status = "Обрабатывается",
                    Card = card
                });
                App.db.SaveChanges();
                App.db.Request.Add(new Request
                {
                    CreditId = App.db.Credit.Local.LastOrDefault().id,
                    name = "Одобрить кредит?",
                    status = true
                });
                App.db.SaveChanges();
            }

            for (int i = -1; i < Years * 12; i++)
            {
                if(i != -1)
                    TotalSum -= (TotalAmount + (TotalAmount * rate)) / (Years * 12);

                if (type == 1)
                {
                    PartialSum = Convert.ToInt32((TotalAmount / (Years * 12)) + (TotalAmount - (TotalAmount / (Years * 12))) * (i + 1) * (rate / 12));
                    creditScheduleClasses.Add(new CreditScheduleClass(Convert.ToInt32(TotalSum).ToString(), PartialSum.ToString(), DateTime.Today.AddMonths(i + 1).ToString("d")));
                }
                else
                {
                    if (TotalSum < 0)
                        TotalSum = 0; 
                    creditScheduleClasses.Add(new CreditScheduleClass(Convert.ToInt32(TotalSum).ToString(), Convert.ToInt32(PartialSum).ToString(), DateTime.Today.AddMonths(i + 1).ToString("d")));
                }
                if (IsSave)
                {
                   
                    App.db.Failure_Schedule.Add(new Model.Failure_Schedule
                    {
                        date = DateTime.Today.AddMonths(i),
                        amount = Convert.ToInt32(PartialSum),
                        CreditId = App.db.Credit.Local.LastOrDefault().id
                    });
                }
            }
            (sender as DataGrid).ItemsSource = creditScheduleClasses;
            App.db.SaveChanges();
        }
    }
}
