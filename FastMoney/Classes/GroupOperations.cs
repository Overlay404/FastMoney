using FastMoney.View.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace FastMoney.Classes
{
    internal class GroupOperations
    {
        public GroupOperations()
        {
            if (MainPage.Instanse.OperationsItemControl.ItemsSource == null) return;

            CollectionView collectionView = (CollectionView)CollectionViewSource.GetDefaultView(MainPage.Instanse.OperationsItemControl.ItemsSource);
            PropertyGroupDescription groupDescription = new PropertyGroupDescription("date");
            collectionView.GroupDescriptions.Add(groupDescription);
        }
    }
}
