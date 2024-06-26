using System;
using System;
using System.Collections.Generic;
public abstract class Student
{
    public string Name { get; set; }
    public int StudentId { get; set; }
    public double Grade { get; set; }
    public abstract bool IsPassed(double grade);
}
public class Undergraduate : Student
{
    public override bool IsPassed(double grade)
    {
        return grade > 70.0;
    }
}
public class Graduate : Student
{
    public override bool IsPassed(double grade)
    {
        return grade > 80.0;
    }
}
public class Products
{
    public int ProductId { get; set; }
    public string ProductName { get; set; }
    public decimal Price { get; set; }
}
class Program
{
    static void Main(string[] args)
    {
        Student undergrad = new Undergraduate()
        {
            Name = "Sai Vardhan",
            StudentId = 103,
            Grade = 75.5
        };
        Console.WriteLine($"Undergraduate Student: {undergrad.Name}");
        Console.WriteLine($"Student ID: {undergrad.StudentId}");
        Console.WriteLine($"Grade: {undergrad.Grade}");
        Console.WriteLine($"Passed: {undergrad.IsPassed(undergrad.Grade)}");
        Console.WriteLine();
        Student grad = new Graduate()
        {
            Name = "Sindhu",
            StudentId = 109,
            Grade = 85.5
        };
        Console.WriteLine($"Graduate Student: {grad.Name}");
        Console.WriteLine($"Student ID: {grad.StudentId}");
        Console.WriteLine($"Grade: {grad.Grade}");
        Console.WriteLine($"Passed: {grad.IsPassed(grad.Grade)}");
        Console.WriteLine();

        List<Products> productList = new List<Products>();
        for (int i = 0; i < 5; i++)
        {
            Console.WriteLine($"Enter details for Product {i + 1}:");
            Products product = new Products();
            product.ProductId = i + 1;

            Console.Write("Enter Product Name: ");
            product.ProductName = Console.ReadLine();

            Console.Write("Enter Price: ");
            product.Price = Convert.ToDecimal(Console.ReadLine());

            productList.Add(product);
        }
        productList.Sort((x, y) => x.Price.CompareTo(y.Price));
        Console.WriteLine("-----------------Sorted Products based on Price-------------------------");
        foreach (var product in productList)
        {
            Console.WriteLine($"Product ID: {product.ProductId}, Name: {product.ProductName}, Price: {product.Price}");
        }
        Console.WriteLine();
        try
        {
            Console.Write("Enter an integer :");
            int number = int.Parse(Console.ReadLine());

            if (number < 0)
            {
                throw new ArgumentException("Number cannot be negative.");
            }

            Console.WriteLine($"Entered number: {number}");
        }
        catch (ArgumentException ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
        }
        catch (FormatException ex)
        {
            Console.WriteLine($"Error: {ex.Message}. Please enter a valid Number.");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
            Console.ReadLine();
    }
}