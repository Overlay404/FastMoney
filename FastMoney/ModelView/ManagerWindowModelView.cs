using FastMoney.Commands;
using FastMoney.Model;
using FastMoney.ModelView.Base;
using FastMoney.View.Windows;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Input;

namespace FastMoney.ModelView
{
    internal class ManagerWindowModelView : ViewModel
    {
        #region Fields
        #region Requests
        private List<Request> requests = App.db.Request.Where(r => r.status == true).ToList();

        public List<Request> Requests { get => requests; set => Set(ref requests, value); }
        #endregion

        #region Selected
        private Request selected;

        public Request Selected { get => selected; set => Set(ref selected, value); } 
        #endregion
        #endregion

        #region Commands

        #region DragMoveCommand
        public ICommand DragMoveCommand { get; }
        private bool CanDragMoveCommandExecute(object parameter) => true;
        private void OnDragMoveCommandExecute(object parameter)
        {

            ManagerWindow.Instance.DragMove();
        }
        #endregion
        #region MinimazeWindow
        public ICommand MinimazeWindow { get; }
        private bool CanMinimazeWindowExecute(object parameter) => true;
        private void OnMinimazeWindowExecute(object parameter)
        {
            ManagerWindow.Instance.WindowState = System.Windows.WindowState.Minimized;
        } 
        #endregion
        #endregion

        public ManagerWindowModelView()
        {
            DragMoveCommand = new LambdaCommand(OnDragMoveCommandExecute, CanDragMoveCommandExecute);
            MinimazeWindow = new LambdaCommand(OnMinimazeWindowExecute, CanMinimazeWindowExecute);
        }
    }
}
