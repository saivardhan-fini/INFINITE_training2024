using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exam3_CC3
{
    class Cricket
    {
        public void Pointscalculation(int no_of_matches)
        {
            double[] scores = new double[no_of_matches];
            double totalSum = 0;

            for (int i = 0; i < no_of_matches; i++)
            {
                Console.Write($"Enter score for match {i + 1}: ");
                scores[i] = Convert.ToDouble(Console.ReadLine());
                totalSum += scores[i];
            }

            double average = (totalSum / no_of_matches);

            Console.WriteLine($"cumulative total Sum of scores: {totalSum}");
            Console.WriteLine($"Average score of the team : {average}");
        }
    }
    class Box
    {
        public int Length { get; set; }
        public int Breadth { get; set; }
        public Box(int length, int breadth)
        {
            Length = length;
            Breadth = breadth;
        }
        
        public Box AddBoxes(Box otherBox)
        {
            int combinedLength = this.Length + otherBox.Length;
            int combinedBreadth = this.Breadth + otherBox.Breadth;
            return new Box(combinedLength, combinedBreadth);
        }
        
        public void DisplayBoxDetails()
        {
            Console.WriteLine($"Length: {Length}, Breadth: {Breadth}");
        }
    }
    class Test
    {
        public void Run()
        {
            Cricket cricket = new Cricket();
            Console.Write("Enter the number of matches played by the team : ");
            int matches = Convert.ToInt32(Console.ReadLine());
            cricket.Pointscalculation(matches);
            Box box1 = new Box(5, 3);
            Box box2 = new Box(2, 4);
            Box box3 = box1.AddBoxes(box2);

            Console.WriteLine("----------------------------Details of the combined box (box3):------------------------------------");
            box3.DisplayBoxDetails();
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Test test = new Test();
            test.Run();
            Console.Read();
        }
    }
}
