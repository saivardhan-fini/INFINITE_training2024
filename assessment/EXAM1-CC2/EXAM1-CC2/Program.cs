using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*Write a C# Sharp program to exchange the first and last characters in a given string and return the new string.
Sample Input:
"abcd"
"a"
"xy"
Expected Output:
dbca
a
yx*/

class Program
{
    static void Main()
    {
        Console.WriteLine(ExchangeFirstLast("abcd"));
        Console.WriteLine(ExchangeFirstLast("a"));
        Console.WriteLine(ExchangeFirstLast("xy"));
        Console.Read();
    }
    static string ExchangeFirstLast(string str)
    {
        if (str.Length <= 1)
        {
            return str;
        }
        char firstChar = str[0];
        char lastChar = str[str.Length - 1];
        char[] chars = str.ToCharArray();
        chars[0] = lastChar;
        chars[str.Length - 1] = firstChar;
        return new string(chars);
    }
}
