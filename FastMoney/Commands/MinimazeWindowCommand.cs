﻿using FastMoney.Commands.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace FastMoney.Commands
{
    internal class MinimazeWindowCommand : Command
    {
        public override bool CanExecute(object parameter) => true;

        public override void Execute(object parameter)
        {
            MainWindow.Instanse.WindowState = System.Windows.WindowState.Minimized;
        }
    }
}
