using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CC4
{
    class Program
    {
        static void Main(string[] args)
        {
            Program p = new Program();
            p.Multiplication();
           
            Console.Read();
        }
        void Multiplication()
        {
            Console.WriteLine("---multiply function---");
            Console.Write("Enter a number:  ");
            int number = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("----Display MultiplyTable---");
            for (int i = 0; i <= 10; i++)
            {
                Console.WriteLine("{0} * {1} = {2}", number, i, number * i);
            }
        }
    }
}
