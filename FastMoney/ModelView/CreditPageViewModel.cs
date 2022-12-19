using FastMoney.Model;
using FastMoney.ModelView.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.ModelView
{
    internal class CreditPageViewModel : ViewModel
    {
        #region Fields
        #region amount
        private int amount = 1000000;
        public int Amount { get => amount; set => Set(ref amount, value); }
        #endregion
        #region years
        private int years = 1;
        public int Years { get => years; set => Set(ref years, value); }
        #endregion
        #endregion
    }
}
