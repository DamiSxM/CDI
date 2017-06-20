using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Globalization;
using System.Threading.Tasks;

namespace Le_palindrome
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Entrer un mot : ");

            string mot = Console.ReadLine(); //Console.WriteLine(mot.Length.ToString());

            if (isPal(format(mot))) Console.WriteLine("Palindrome !");  // Si V
            else Console.WriteLine("no Palindrome T_T");                // Si F

            Console.ReadLine();
        }

        static string format(string mot)
        {
            mot = mot.Replace(" ", "");
            mot = mot.ToLower();
            mot = RemoveDiacritics(mot);
            mot = RemovePunctuation(mot);
            return mot;
        }

        static bool isPal(string s)
        {
            bool result = true;
            int mid = (int) Math.Floor(s.Length / 2.0);
            int i = 0;
            do
            {
                string a = s.Substring(i, 1);
                string b = s.Substring((s.Length-1) - i, 1);
                if (a != b)
                {
                    result = false;
                    i = mid;
                }
                else i++;

            } while (i < mid);
            return result;
        }
        static string RemoveDiacritics(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return text;

            text = text.Normalize(NormalizationForm.FormD);
            var chars = text.Where(c => CharUnicodeInfo.GetUnicodeCategory(c) != UnicodeCategory.NonSpacingMark).ToArray();
            return new string(chars).Normalize(NormalizationForm.FormC);
        }

        static string RemovePunctuation(string txt)
        {
            string ret = "";
            foreach (var c in txt)
            {
                if (!char.IsPunctuation(c))
                {
                    ret += c;
                }
            }
            return ret;
        }
    }
}