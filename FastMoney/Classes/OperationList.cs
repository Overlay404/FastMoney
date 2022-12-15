using FastMoney.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Classes
{
    internal class OperationList
    {
        public static DateTime yesterday = DateTime.Today.AddDays(-1);
        public string Day { get; set; }
        public List<Operation> Operation { get; set; }

        public OperationList(string day, List<Operation> operation)
        {
            Day = day;
            Operation = operation;
        }
    }
}
