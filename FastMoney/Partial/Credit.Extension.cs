using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Model
{
    partial class Credit
    {
        public string AmountTotalFormat => $"{Convert.ToDouble(totalAmount).ToString("C", CultureInfo.CreateSpecificCulture("ru-RU"))}";
        public string Icon => type.Equals("Ауинтентный") ? "Solid_HandHoldingDollar" : "Solid_SackDollar";
    }
}
