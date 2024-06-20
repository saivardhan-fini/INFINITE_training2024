using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

class Program
{
    static void Main()
    {
        string str1 = "Python";
        int pos1 = 1;
        string str2 = "Python";
        int pos2 = 0;
        string str3 = "Python";
        int pos3 = 4;

        Console.WriteLine(RemoveCharAtPosition(str1, pos1));
        Console.WriteLine(RemoveCharAtPosition(str2, pos2));
        Console.WriteLine(RemoveCharAtPosition(str3, pos3));
        Console.Read();
    }

    static string RemoveCharAtPosition(string str, int index)
    {
        if (index < 0 || index >= str.Length)
        {
            throw new ArgumentOutOfRangeException(nameof(index), "Index is out of range.");
        }
        return str.Remove(index, 1);
    }
}