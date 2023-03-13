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
using Microsoft.Win32;
using System.IO;
using TJ.Modules;

namespace TJ
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        private static readonly string registryPath = System.IO.Path.Combine(Registry.CurrentUser.Name, "Software", "MyLoginSaver");

        private static string GetRegistryKey(string key)
        {
            return (string)Registry.GetValue(registryPath, key, string.Empty);
        }

        private static void SetRegistryKey(string key, string value)
        {
            Registry.SetValue(registryPath, key, value, RegistryValueKind.String);
        }
        public string Login { get; set; }
        public string Password { get; set; }
        public LoginWindow()
        {
            InitializeComponent();
            if (GetRegistryKey("Password")?.Length > 0)
            {
                PasswordPb.Password = GetRegistryKey("Password");
                LoginTb.Text = GetRegistryKey("Login");
            }
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            Auth user = TjCollectionEntities.GetContext().Auths.FirstOrDefault(p => p.Login == LoginTb.Text && p.Password == PasswordPb.Password);

            if (user == null)
            {
                MessageBox.Show("Неверный логин или пароль, пожалуйста попробуйте ещё раз");
                return;
            }
            if (SavePasswordCheckBox.IsChecked == true)
            {
                SetRegistryKey("Password", PasswordPb.Password);
                SetRegistryKey("Login", LoginTb.Text);
            }

            LoginData.Role = user.RoleID;
            MainWindow hrWindow = new MainWindow();
            hrWindow.Show();

            this.Close();
        }
    }
}

