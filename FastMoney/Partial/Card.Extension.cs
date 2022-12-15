using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FastMoney.Model
{
    partial class Card
    {
        public string AmountFormat => $"{Convert.ToDouble(amount).ToString("C", CultureInfo.CreateSpecificCulture("ru-RU"))}";
        public string NumberFormat => $"{number.Substring(0,4)} {number.Substring(4,4)} {number.Substring(8, 4)} {number.Substring(12,4)}";
    }
}
