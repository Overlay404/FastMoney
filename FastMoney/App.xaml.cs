using FastMoney.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace FastMoney
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {

        public static FastMoneyEntities db = new FastMoneyEntities();


        public static User user;

        public App()
        {
            App.db.User.Load();
            App.db.Role.Load();
            App.db.Role.Load();
            App.db.Card.Load();
            App.db.Deposit.Load();
        }
    }
}
