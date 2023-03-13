using System;
using System.Collections.Generic;
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
using TJ.Modules;

namespace TJ
{
    /// <summary>
    /// Логика взаимодействия для ShoesListPage.xaml
    /// </summary>
    public partial class ShoesListPage : Page
    {
        public List<Shoo> Shoos { get; set; }
        public ShoesListPage()
        {
            InitializeComponent();
            Shoos = TjCollectionEntities.GetContext().Shoos.ToList();
            DataContext = this;
            DataGridshoo.ItemsSource = TjCollectionEntities.GetContext().Shoos.ToList();
        }

        private void ShoesInfoBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ShoesInfoPage((Shoo)(sender as Button).DataContext));
        }

        private void AddShoes_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ShoesInfoPage(null));
        }

        private void DeteleShoes_Click(object sender, RoutedEventArgs e)
        {
            var selectedGoods = DataGridshoo.SelectedItems.Cast<Shoo>().ToList();
            MessageBoxResult messageBoxResult = MessageBox.Show($"Удалить {selectedGoods.Count()}записей ??? ", "Удаление", MessageBoxButton.OKCancel, MessageBoxImage.Question);
            if (messageBoxResult == MessageBoxResult.OK)
            {
                try
                {
                    Shoo x = selectedGoods[0];
                    var complects = TjCollectionEntities.GetContext().Shoos.Where(p => p.ShoosID == x.ShoesTypeID).ToList();
                    TjCollectionEntities.GetContext().Shoos.Remove(x);
                    TjCollectionEntities.GetContext().SaveChanges();
                    MessageBox.Show("Записи удалены");
                    List<Shoo> goods = TjCollectionEntities.GetContext().Shoos.OrderBy(p =>
                    p.ShoosName).ToList();
                    DataGridshoo.ItemsSource = null;
                    DataGridshoo.ItemsSource = goods;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), "Ошибка удаления", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
