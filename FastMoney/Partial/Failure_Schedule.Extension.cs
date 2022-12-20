using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Model
{
    partial class Failure_Schedule
    {
        public string Visiblity => date >= DateTime.Today || status == true ? "Hidden" : "Visible";
        public string FormatStatus => status == true ? "Оплачен" : "Не оплачен";
    }
}
