using FastMoney.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace FastMoney.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public static MainPage Instanse { get; set; }
        public MainPage()
        {
            InitializeComponent();
            Instanse = this;
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            OperationsItemControl.ItemsSource = App.db.Operation.ToList();

            CollectionView collectionView = (CollectionView)CollectionViewSource.GetDefaultView(OperationsItemControl.ItemsSource);
            PropertyGroupDescription groupDescription = new PropertyGroupDescription("date");
            SortDescription groupDescription1 = new SortDescription("date", ListSortDirection.Descending);
            collectionView.GroupDescriptions.Add(groupDescription);
            collectionView.SortDescriptions.Add(groupDescription1);
        }
    }
}
