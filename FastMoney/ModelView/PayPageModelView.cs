using FastMoney.Model;
using FastMoney.ModelView.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.ModelView
{
    internal class PayPageModelView : ViewModel
    {
        #region Field

        #region Credits
        private IEnumerable<Credit> _Credits = App.db.Credit.Where(c => c.UserId == App.user.id);

        public IEnumerable<Credit> Credit { get => _Credits.ToList(); set => Set(ref _Credits, value); } 
        #endregion

        #endregion
    }
}
