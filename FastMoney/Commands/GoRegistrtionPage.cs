using FastMoney.Commands.Base;
using FastMoney.View.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Commands
{
    internal class GoRegistrtionPage : Command
    {
        public override bool CanExecute(object parameter) => true;

        public override void Execute(object parameter) => AutorizationRegistration.Instance.frameAuthReg.Navigate(new View.Pages.Registration());
    }

}
