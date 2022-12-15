using FastMoney.Classes;
using FastMoney.Model;
using FastMoney.ModelView.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace FastMoney.ModelView
{
    internal class MainPageViewModel : ViewModel
    {

        private List<OperationList> _ListOperations = new List<OperationList> { new OperationList("Сегодня", App.db.Operation.Where(o => o.date == DateTime.Today).ToList()), new OperationList("Вчера", App.db.Operation.Where(o => o.date == OperationList.yesterday).ToList()) };
        public List<OperationList> ListOperations { get => _ListOperations; set => Set(ref _ListOperations, value); }

    }
}
