using FastMoney.Commands.Base;
using FastMoney.View.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Commands
{
    internal class MinimazeWindowCommandAuth : Command
    {
        public override bool CanExecute(object parameter) => true;

        public override void Execute(object parameter)
        {
            AutorizationRegistration.Instance.WindowState = System.Windows.WindowState.Minimized;
        }
    }
}
