using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Classes
{
    internal class CreditScheduleClass
    {
        public string TotalSum { get; set; }
        public string PartialSum { get; set; }
        public string Date { get; set; }
        public CreditScheduleClass(string TotalSum, string PartialSum, string Date)
        {
            this.TotalSum = TotalSum;
            this.PartialSum = PartialSum;
            this.Date = Date;
        }
    }
}
