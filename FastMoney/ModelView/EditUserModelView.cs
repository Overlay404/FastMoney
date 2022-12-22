using FastMoney.Commands;
using FastMoney.Model;
using FastMoney.ModelView.Base;
using FastMoney.View.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace FastMoney.ModelView
{
    internal class EditUserModelView : ViewModel
    {
        #region Field

        #region User
        private User user = App.user;

        public User User { get => user; set => Set(ref user, value); }
        #endregion

        #endregion

        #region Commands

        #region SaveDataBase
        public ICommand SaveDataBase { get; }
        private bool CanSaveDataBaseExecute(object parameter) => true;
        private void OnSaveDataBaseExecute(object parameter)
        {
            App.db.SaveChanges();
            MainWindow.Instanse.UserFullName.Text = App.user.FullName;
            EditUser.Instance.Close();
        }
        #endregion

        #region Return
        public ICommand Return { get; }
        private bool CanReturnExecute(object parameter) => true;
        private void OnReturnExecute(object parameter)
        {
            App.db.SaveChanges();
            MainWindow.Instanse.UserFullName.Text = App.user.FullName;
            EditUser.Instance.Close();
        }
        #endregion

        #endregion

        public EditUserModelView()
        {
            SaveDataBase = new LambdaCommand(OnSaveDataBaseExecute, CanSaveDataBaseExecute);
            Return = new LambdaCommand(OnReturnExecute, CanReturnExecute);
        }
    }
}
