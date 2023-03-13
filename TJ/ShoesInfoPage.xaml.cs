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
using System.IO;
using Microsoft.Win32;
using TJ.Modules;

namespace TJ
{
    /// <summary>
    /// Логика взаимодействия для ShoesInfoPage.xaml
    /// </summary>
    public partial class ShoesInfoPage : Page
    {
        public Shoo Shoo { get; set; }
        public string _photoDirectory = $@"{Directory.GetCurrentDirectory()}\Images\";

        private string _photoPath;
        private string _photoName;
        public ShoesInfoPage(Shoo shoo)
        {
            InitializeComponent();
            Shoo = shoo ?? new Shoo();
            ColorCb.ItemsSource = TjCollectionEntities.GetContext().Colors.ToList();
            MaterialCb.ItemsSource = TjCollectionEntities.GetContext().Materials.ToList();
            SeasonCb.ItemsSource = TjCollectionEntities.GetContext().Seasons.ToList();
            SizeCb.ItemsSource = TjCollectionEntities.GetContext().Sizes.ToList();
            ShooTypesCb.ItemsSource = TjCollectionEntities.GetContext().ShoeTypes.ToList();
            DataContext = shoo;
        }

        private void LoadPhotoBtn_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();

            openFileDialog.Filter = "JPG Files (*.jpg)|*.jpg|PNG Files (*.png)|*.png";
            if (openFileDialog.ShowDialog() == false)
            {
                return;
            }

            FileInfo fileInfo = new FileInfo(openFileDialog.FileName);

            if (fileInfo.Length > 8 * 1024 * 1024 * 6)
            {
                MessageBox.Show("Размер фото не должен превышать 6 мб");
                return;
            }

            _photoName = Guid.NewGuid().ToString();
            _photoPath = fileInfo.FullName;
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                Shoo.ShoesTypeID = (ShooTypesCb.SelectedItem as ShoeType).ShoesTypeID;
                Shoo.SizeID = (SizeCb.SelectedItem as Modules.Size).SizeID;
                Shoo.MaterialID = (MaterialCb.SelectedItem as Material).MaterialID;
                Shoo.SeasonID = (SeasonCb.SelectedItem as Season).SeasonID;
                Shoo.ColorID = (ColorCb.SelectedItem as Modules.Color).ColorID;
                if (_photoPath != null)
                {
                    Shoo.Photo = _photoName;
                    File.Copy(_photoPath, _photoDirectory + _photoName);
                }
                if (Shoo.ShoosID == 0)
                {
                    Shoo.Price = 0;
                    TjCollectionEntities.GetContext().Shoos.Add(Shoo);
                }
                TjCollectionEntities.GetContext().SaveChanges();
                NavigationService.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.InnerException.Message);
            }
        }
    }
}
