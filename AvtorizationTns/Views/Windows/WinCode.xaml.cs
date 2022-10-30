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
using System.Windows.Shapes;

namespace AvtorizationTns.Views.Windows
{
    /// <summary>
    /// Логика взаимодействия для WinCode.xaml
    /// </summary>
    public partial class WinCode : Window
    {
        public WinCode()
        {
            InitializeComponent();
        }
        public string GenerationCaptcha()
        {
            //Количество букв и цифр за слово
            int numLetters = 8;


            //массив букв
            char[] letter = "ABCDEFGHIKLMQRSTVXYZab#$cdefghikNOPlmnopqrstvxyz!@%^123456789".ToCharArray();

            //Генератор рандомных чисел
            Random random = new Random();

            //Делаем слово
            string captcha = "";

            for (int i = 1; i <= numLetters; i++)
            {
                //Выбор случайных чисел
                //Для набора буквы из массива букв
                int letterNum = random.Next(0, letter.Length - 1);

                //Добавить письмо
                captcha += letter[letterNum];
            }
            //Полученный результат
            return captcha;
        }
    }
}
