using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
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
    /// Логика взаимодействия для ShoList.xaml
    /// </summary>
    public partial class ShoList : Page
    {
        int pageNum = 1;
        public ShoList()
        {
            InitializeComponent();
            ShoesLb.ItemsSource = TjCollectionEntities.GetContext().Shoos.ToList();
            List<ShoeType> shoeTypes = TjCollectionEntities.GetContext().ShoeTypes.ToList();
            shoeTypes.Insert(0, new ShoeType
            {
                ShoesType = "Все"
            });
            ShoFilterCb.ItemsSource = shoeTypes;
            ShoFilterCb.DisplayMemberPath = "ShoeType";
            ShoFilterCb.SelectedIndex = 0;
            ShoSortCb.SelectedIndex = 0;
        }

        private void Update()
        {
            List<Shoo> shoos = TjCollectionEntities.GetContext().Shoos
                .OrderBy(p => p.ShoosName)
                .ToList();

            if (SearchTb.Text.Trim() != "")
            {
                shoos = shoos
                    .Where(p => p.ShoosName.Trim().ToLower().Contains(SearchTb.Text.Trim().ToLower()) ||
                     p.Article.Trim().ToLower().Contains(SearchTb.Text.Trim().ToLower())).ToList();
            }

            if (AllRb.IsChecked == true)
            {
                shoos = shoos.ToList();
            }

            if (DemiRb.IsChecked == true)
            {
                shoos = shoos.Where(p => p.Season.SeasonID == 1).ToList();
            }

            if (LetoRb.IsChecked == true)
            {
                shoos = shoos.Where(p => p.Season.SeasonID == 2).ToList();
            }

            if (ShoFilterCb.SelectedIndex > 0)
            {
                shoos = shoos.Where(p => p.ShoesTypeID == (ShoFilterCb.SelectedItem as ShoeType).ShoesTypeID).ToList();
            }

            if (ShoSortCb.SelectedIndex > 0)
            {
                switch (ShoSortCb.SelectedIndex)
                {
                    case 1:
                        shoos = shoos.OrderBy(p => p.Price).ToList();
                        break;
                    case 2:
                        shoos = shoos.OrderByDescending(p => p.Price).ToList();
                        break;
                }
            }

            try
            {
                bool canParse = int.TryParse(PageCount.Text, out int currentPage);
                List<Shoo> pageAgents = new List<Shoo>();

                currentPage = currentPage <= 0 || currentPage > shoos.Count || !canParse ? 1 : currentPage;

                int itemsPerPage = 6;
                int offset = ((currentPage - 1) * itemsPerPage + 1) - 1;
                for (int i = offset; i < itemsPerPage + offset; i++)
                {
                    if (i < shoos.Count)
                    {
                        pageAgents.Add(shoos[i]);
                    }
                }
                ShoesLb.ItemsSource = pageAgents;
                ShoesLb.ItemsSource = pageAgents;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            ShoesLb.ItemsSource = TjCollectionEntities.GetContext().ShoeTypes.ToList();


            List<ShoeType> shoeTypes = TjCollectionEntities.GetContext().ShoeTypes.ToList();
            shoeTypes.Insert(0, new ShoeType
            {
                ShoesType = "Все"
            });
            ShoFilterCb.ItemsSource = shoeTypes;
            ShoFilterCb.DisplayMemberPath = "ShoesType";
            ShoFilterCb.SelectedIndex = 0;

            ShoSortCb.SelectedIndex = 0;
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void ShoFilterCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void ShoSortCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void ShoShowBtn_Click(object sender, RoutedEventArgs e)
        {
            Shoo shoo = (Shoo)(sender as Button).DataContext;
            NavigationService.Navigate(new ShoesInfoPage(shoo));
        }

        private void prevPages_Click(object sender, RoutedEventArgs e)
        {
            List<Shoo> shoos = TjCollectionEntities.GetContext().Shoos
              .OrderBy(p => p.ShoosName)
              .ToList();
            if (pageNum > 4)
            {
                pageNum -= 4;
                firstBtn.Content = pageNum;
                secondBtn.Content = pageNum + 1;
                fourthBtn.Content = pageNum + 2;
                fivethBtn.Content = pageNum + 3;
            }
        }

        private void firstBtn_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = pageNum.ToString();
            Update();
        }

        private void secondBtn_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = (pageNum + 1).ToString();
            Update();
        }

        private void fourthBtn_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = (pageNum + 2).ToString();
            Update();
        }

        private void fivethBtn_Click(object sender, RoutedEventArgs e)
        {
            PageCount.Text = (pageNum + 3).ToString();
            Update();
        }

        private void nextPages_Click(object sender, RoutedEventArgs e)
        {
            List<Shoo> shoos = TjCollectionEntities.GetContext().Shoos
               .OrderBy(p => p.ShoosName)
               .ToList();
            if (pageNum < shoos.Count / 6)
            {
                pageNum += 4;
                firstBtn.Content = pageNum;
                secondBtn.Content = pageNum + 1;
                fourthBtn.Content = pageNum + 2;
                fivethBtn.Content = pageNum + 3;
            }
        }

        private void PageCount_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void ListShooBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ShoesListPage());
        }

        private void AllRb_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void DemiRb_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void LetoRb_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }
    }
}
