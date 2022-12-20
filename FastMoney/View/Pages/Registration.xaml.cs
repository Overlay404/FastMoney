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
    /// Логика взаимодействия для Registration.xaml
    /// </summary>
    public partial class Registration : Page
    {
        public Registration()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(name.Text == "" || lasname.Text == "" || patr.Text == "" || login.Text == "" || password.Text == "" || phone.Text == "")
            {
                MessageBox.Show("Не все поля заполнены");
                return;
            }
            if (App.db.User.Where(u => u.login == login.Text.Trim()).FirstOrDefault() != null ) return;

            App.db.User.Add(new Model.User
            {
                name = name.Text.Trim(),
                lastname = lasname.Text.Trim(),
                patronymic = patr.Text.Trim(),
                phone = phone.Text.Trim(),
                login = login.Text.Trim(),
                password = password.Text.Trim(),
                RoleId = 1
            });
            App.db.SaveChanges();
            MessageBox.Show("Учётная запись успешно создана");
            AutorizationRegistration.Instance.frameAuthReg.Navigate(new Autorization());
        }
    }
}
