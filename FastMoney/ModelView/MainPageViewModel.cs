using FastMoney.Classes;
using FastMoney.Commands;
using FastMoney.Model;
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
    internal class MainPageViewModel : ViewModel
    {

        #region Fields
        #region Operations
        private List<Operation> _ListOperations = App.db.Operation.ToList();
        public List<Operation> ListOperations { get => _ListOperations; set => Set(ref _ListOperations, value); }
        #endregion

        #region PayPage        
        private readonly Page _PayPage = new View.Pages.PayPage();
        public Page PayPage { get => _PayPage; }
        #endregion

        #region TransferPage        
        private readonly Page _TransferPage = new View.Pages.TransferPage();
        public Page TransferPage { get => _TransferPage; }
        #endregion

        #region CreditPage        
        private readonly Page _CreditPage = new View.Pages.CreditPage();
        public Page CreditPage { get => _CreditPage; }
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
        #endregion


        public MainPageViewModel()
        {
            GoPage = new LambdaCommand(OnGoPageExecute, CanGoPageExecute);
        }
    }
}
