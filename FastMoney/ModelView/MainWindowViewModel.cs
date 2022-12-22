using FastMoney.Commands;
using FastMoney.Model;
using FastMoney.ModelView.Base;
using FastMoney.View.Windows;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
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

        #region CardAddPage        
        private readonly Page _CardAddPage = new View.Pages.CardAddPage();
        public Page CardAddPage { get => _CardAddPage; }
        #endregion

        #region MainWindow        
        private readonly MainWindow _MainWindow = MainWindow.Instanse;
        public MainWindow MainWindow { get => _MainWindow; }
        #endregion

        #region AutorizationRegistration        
        private readonly AutorizationRegistration _AutorizationRegistration = AutorizationRegistration.Instance;
        public AutorizationRegistration AutorizationRegistration { get => _AutorizationRegistration; }
        #endregion

        #region NameClient
        private User _NameClient = App.user;

        public User NameClient { get => _NameClient; set => Set(ref _NameClient, value); }
        #endregion

        #region Wallet
        private IEnumerable<Card> _Wallet = App.db.Card.Local.Where(c => c.User == App.user);

        public IEnumerable<Card> Wallet { get => _Wallet; set => Set(ref _Wallet, value); }
        #endregion

        #region Deposit
        private IEnumerable<Deposit> _Deposit = App.db.Deposit.Local.Where(c => c.User == App.user);

        public IEnumerable<Deposit> Deposit { get => _Deposit; set => Set(ref _Deposit, value); }
        #endregion

        #region Credit
        private IEnumerable<Credit> _Credit = App.db.Credit.Local.Where(c => c.User == App.user);

        public IEnumerable<Credit> Credit { get => _Credit; set => Set(ref _Credit, value); } 
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
