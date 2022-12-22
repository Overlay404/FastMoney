using FastMoney.Commands.Base;
using FastMoney.View.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Commands
{
    internal class Deautorization : Command
    {
        public override bool CanExecute(object parameter) => true;

        public override void Execute(object parameter)
        {
            new AutorizationRegistration().Show();
            if (MainWindow.Instanse != null)
                MainWindow.Instanse.Close();
            if (ManagerWindow.Instance != null)
                ManagerWindow.Instance.Close();
        }
    }
}
