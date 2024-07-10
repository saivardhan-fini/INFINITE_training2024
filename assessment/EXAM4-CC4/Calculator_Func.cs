using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EXAM4_CC4
{
    public delegate int CalculatorOperation(int a, int b);

    class Calculator_Func
    {
        static void main(string[] args)
        {
            CalculatorOperation add = Add;
            CalculatorOperation subtract = Subtract;
            CalculatorOperation multiply = Multiply;
            Console.Write("Enter the first Digit: ");
            int num1 = int.Parse(Console.ReadLine());

            Console.Write("Enter the second Digit: ");
            int num2 = int.Parse(Console.ReadLine());
            int sum = add(num1, num2);
            int difference = subtract(num1, num2);
            int product = multiply(num1, num2);
            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("What operation do you want to do , + , - , *");
                char s = char.Parse(Console.ReadLine());
                if (s == '+')
                {
                    Console.WriteLine($"Sum: {sum}");
                }
                else if (s == '-')
                {
                    Console.WriteLine($"Difference: {difference}");
                }
                else
                {
                    Console.WriteLine($"Product: {product}");
                }
            }
            Console.ReadLine();
        }
        static int Add(int a, int b)
        {
            return a + b;
        }

        static int Subtract(int a, int b)
        {
            return a - b;
        }

        static int Multiply(int a, int b)
        {
            return a * b;
        }
    }
}