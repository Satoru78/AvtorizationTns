using AvtorizationTns.Context;
using AvtorizationTns.Views.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

using System.Windows.Data;

using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;

namespace AvtorizationTns
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer timer = new DispatcherTimer();
        public MainWindow()
        {
            InitializeComponent();
            txbPassword.IsEnabled = false;
            txbCode.IsEnabled = false;
            LoginBtn.IsEnabled = false;
        }

        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (txbLogin.Text == "" && txbPassword.Text == "")
                {
                    throw new Exception("Заполните все поля");
                }
                else
                {
                    var currentUser = Data.tn.Employee.FirstOrDefault(item => item.Login == txbLogin.Text && item.Password == txbPassword.Text);
                    switch (currentUser.IDRole)
                    {
                        case 1:
                            WindowMain windowMain = new WindowMain();
                            windowMain.ShowDialog();
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Неизвестная ошибка");
            }
        }

        private void DwnBtn_Click(object sender, RoutedEventArgs e)
        {
            WinCode code = new WinCode();
            code.ShowDialog();
            timer.Start();
        }

        private void txbCode_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            if (txbCode.Text != "")
            {
                if (LoginBtn.IsEnabled != true) LoginBtn.IsEnabled = true;
                timer.Stop();
            }
            else
            {
                LoginBtn.IsEnabled = false;
                timer.Start();
            }
        }
        WinCode code = new WinCode();
        private void txbPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                if (Data.tn.Employee.Count(item => item.Password == txbPassword.Text) > 0)
                {
                    code.ShowDialog();
                    txbCode.IsEnabled = true;
                    txbCode.Focus();
                }

            }
        }

        private void txbLogin_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Enter)
            {
                if(Data.tn.Employee.Count(item => item.Login == txbLogin.Text) > 0)
                {
                    txbPassword.IsEnabled = true;
                    txbPassword.Focus();
                }
                else
                {
                    MessageBox.Show("Такого пользователя нет в базе", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            
            }
        }
    }
}
