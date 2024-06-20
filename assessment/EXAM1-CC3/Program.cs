/*Write a C# Sharp program to check the largest number among three given integers.
Sample Input:
1,2,3
1,3,2
1,1,1
1,2,2
Expected Output:
3
3
1
2*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
class Program
{
    static void Main()
    {
        Console.WriteLine(FindLargest(1, 2, 3));
        Console.WriteLine(FindLargest(1, 3, 2));
        Console.WriteLine(FindLargest(1, 1, 1));
        Console.WriteLine(FindLargest(1, 2, 2));
        Console.Read();
    }

    static int FindLargest(int num1, int num2, int num3)
    {
        int largest = Math.Max(num1, Math.Max(num2, num3));
        return largest;
    }
}
