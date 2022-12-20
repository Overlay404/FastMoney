using FastMoney.Classes;
using FastMoney.Model;
using FastMoney.View.Windows;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace FastMoney.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для CreditPage.xaml
    /// </summary>
    public partial class CreditPage : Page
    {
        double rate = 0;
        public CreditPage()
        {
            InitializeComponent();
        }

        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            TextChanged();
        }

        private void Years_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            TextChanged();
        }
        private void Rate_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            TextChanged();
        }
        private void Type_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            TextChanged();
        }
        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            TextChanged();
        }

        private void TextChanged()
        {
            if (Years == null || PartialAmount == null || Rate == null || Type == null || TotalAmount == null) return;

            switch (Rate.SelectedIndex)
            {
                case 0:
                    rate = 0.05;
                    break;
                case 1:
                    rate = 0.08;
                    break;
                case 2:
                    rate = 0.10;
                    break;
            }

            TotalSum.Text = $"{TotalAmount.Value * rate + TotalAmount.Value}";

            if (Type.SelectedIndex == 1)
            {
                PartialAmount.Text = "Рассчитывается в платежах";
                return;
            }
            PartialAmount.Text = $"{Math.Round((TotalAmount.Value * rate + TotalAmount.Value) / (Years.Value * 12))}";
        }
        private void Border_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            (sender as Border).Background = new SolidColorBrush(Colors.WhiteSmoke);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (Years == null || PartialAmount == null || Rate == null || Type == null || TotalAmount == null) return;
            if (Type.SelectedIndex == 1)
            {
                new ScheduleCredit(new CreditClass(Convert.ToInt32(TotalAmount.Value), 0, Convert.ToInt32(Years.Value), Type.SelectedIndex, rate, false, null)).Show();
                return;
            }
            new ScheduleCredit(new CreditClass(Convert.ToInt32(TotalAmount.Value), Convert.ToInt32(PartialAmount.Text), Convert.ToInt32(Years.Value), Type.SelectedIndex, rate, false, null)).Show();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (Years == null || PartialAmount == null || Rate == null || Type == null || TotalAmount == null) return;
            if (App.card == null)
            {
                new CardSelection().Show();
                return;
            }
            if (Type.SelectedIndex == 1)
            {
                new ScheduleCredit(new CreditClass(Convert.ToInt32(TotalAmount.Value), 0, Convert.ToInt32(Years.Value), Type.SelectedIndex, rate, true, App.card)).Show();
                return;
            }
            new ScheduleCredit(new CreditClass(Convert.ToInt32(TotalAmount.Value), Convert.ToInt32(PartialAmount.Text), Convert.ToInt32(Years.Value), Type.SelectedIndex, rate, true, App.card)).Show();
        }

    }
}
