using FastMoney.Commands;
using FastMoney.ModelView.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace FastMoney.ModelView
{
    internal class MainWindowViewModel : ViewModel
    {

        #region Fields
        #region MainPage        
        private readonly Page _MainPage = new View.Pages.MainPage();
        public Page MainPage { get => _MainPage; }
        #endregion

        #region PayPage        
        private readonly Page _PayPage = new View.Pages.PayPage();
        public Page PayPage { get => _PayPage; }
        #endregion

        #region TransferPage        
        private readonly Page _TransferPage = new View.Pages.TransferPage();
        public Page TransferPage { get => _TransferPage; }
        #endregion

        #region InfoTextForExpander
        private string _InfoTextForExpander = "asd";

        public string InfoTextForExpander { get => _InfoTextForExpander; } 
        #endregion
        #endregion

        #region Commands
        #region GoPage
        public ICommand GoPage { get; }
        private bool CanGoPageExecute(object parameter) => true;
        private void OnGoPageExecute(object parameter)
        {

            MainWindow.Instanse.frame.Navigate(parameter as Page);
        }

        #endregion

        #region DragMove
        public ICommand DragMoveCommand { get; }
        private bool CanDragMoveCommandExecute(object parameter) => true;
        private void OnDragMoveCommandExecute(object parameter)
        {

            MainWindow.Instanse.DragMove();
        }
        #endregion 
        #endregion

        public MainWindowViewModel()
        {
            DragMoveCommand = new LambdaCommand(OnDragMoveCommandExecute, CanDragMoveCommandExecute);
            GoPage = new LambdaCommand(OnGoPageExecute, CanGoPageExecute);
        }
    }
}
