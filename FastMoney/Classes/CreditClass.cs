using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace FastMoney.Classes
{
    internal class CreditClass
    {
        public int TotalSum;
        public int PartialSum;
        public int Years;
        public int Type;
        public double Rate;
        public bool IsSave;
        public CreditClass(int totalSum, int partialSum, int years, int type, double rate, bool isSave)
        {
            TotalSum = totalSum;
            PartialSum = partialSum;
            Years = years;
            Type = type;
            Rate = rate;
            IsSave = isSave;
        }
    }
}
