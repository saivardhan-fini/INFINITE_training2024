using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EXAM4_CC4
{
    class Append_txt
    {
        static void Main()
        {
            Console.WriteLine("write any message that you want to append in the file");
            string fileName = "mytext.txt";
            string textToAppend = Console.ReadLine();

            try
            {
                using (StreamWriter fileStream = File.CreateText(fileName))
                {
                    fileStream.WriteLine("Hello every one, Good morning: ");
                    fileStream.WriteLine("My name is M leela sai vardhan");
                    fileStream.WriteLine("I Work in a MNC company has a Assocate software engineer in INFINITE COMPUTER SOLUTIONS");
                }

                using (StreamWriter sw = new StreamWriter(fileName, true))
                {
                    sw.WriteLine(textToAppend);
                }
                Console.WriteLine("Text appended to the file successfully.");
                Console.ReadLine();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }
        }

    }
}