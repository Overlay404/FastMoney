using FastMoney.View.Windows;
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
    /// Логика взаимодействия для Autorization.xaml
    /// </summary>
    public partial class Autorization : Page
    {
        public Autorization()
        {
            InitializeComponent();
            
        }

        private void AuthButton_Click(object sender, RoutedEventArgs e)
        {
            App.user = App.db.User.Where(u => u.login.Equals(login.Text.Trim()) && u.password.Equals(password.Password.Trim())).Select(u => u).FirstOrDefault();

            if (App.user == null)
            {
                MessageBox.Show("Такого пользователя не существует"); 
                return;
            }

            if (saveDataCheckBox.IsChecked == false)
            {
                Properties.Settings.Default.login = login.Text.Trim();
                Properties.Settings.Default.password = password.Password.Trim();
            }
            else
            {
                Properties.Settings.Default.login = null;
                Properties.Settings.Default.password = null;
            }
            Properties.Settings.Default.Save();

            new MainWindow().Show();
            AutorizationRegistration.Instance.Close();
        }
    }
}
