﻿using System;
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

namespace TJ
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new ShoList());
        }

        private void ShoListBtn_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ShoList());
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                MainFrame.GoBack();
            }
        }

        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                BackBtn.Visibility = Visibility.Visible;
                ShoListBtn.Visibility = Visibility.Collapsed;
                ShooListBtn.Visibility = Visibility.Collapsed;
            }
            else
            {
                BackBtn.Visibility = Visibility.Collapsed;
                ShoListBtn.Visibility = Visibility.Visible;
                ShooListBtn.Visibility = Visibility.Visible;
            }
        }

        private void ShooListBtn_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ShoesListPage());
        }
    }
}
