using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Model
{
    partial class Operation
    {
        public string AmountFormat => $"{Convert.ToDouble(amount).ToString("C", CultureInfo.CreateSpecificCulture("ru-RU"))}";
    }
}
